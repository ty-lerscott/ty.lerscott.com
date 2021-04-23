const fs = require("fs");
const { parsed: env } = require("dotenv").config({
  path: "./client/.env.local",
});
const mysqldump = require("mysqldump");

const forProd =
  process.argv.includes("--production") || process.argv.includes("-p");
const forDev =
  process.argv.includes("--development") || process.argv.includes("-d");

const getDump = async () => {
  // dump the result straight to a file
  await mysqldump({
    connection: {
      host: env.DB_HOST,
      user: env.DB_USER,
      database: env.DB_NAME,
      password: env.DB_PASS,
    },
    dumpToFile: env.DB_BACKUP,
  });

  return fs.readFileSync(env.DB_BACKUP, "utf8");
};
// TODO: compress this file
const prepare = (dump) => {
  // if forDev, replace prod url with local
  if (!forProd && !forDev) {
    return dump;
  }

  // if forProd, replace local with prod url
  if (forProd) {
    dump = dump.replace(
      /http:\/\/watercoo\.lerscott\.local/g,
      "https://watercoo.lerscott.com"
    );
  }

  // if forDev, replace prod with local url
  if (forDev) {
    dump = dump.replace(
      /https:\/\/watercoo\.lerscott\.com/g,
      "http://watercoo.lerscott.local"
    );
  }

  const prodBackupPath = forProd
    ? env.DB_BACKUP.includes("prod")
      ? env.DB_BACKUP
      : env.DB_BACKUP.replace(".sql", ".prod.sql")
    : "";

  fs.writeFileSync(prodBackupPath || env.DB_BACKUP, dump, "utf-8");

  console.log("DB back up complete :)");

  return;
};

getDump().then(prepare);
