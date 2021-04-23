const fs = require("fs");
const { parsed: env } = require("dotenv").config({
  path: "./client/.env.local",
});
const mysqldump = require("mysqldump");

const dumpToFilePath = "./mysql/ty_lerscott.sql";

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
    dumpToFile: dumpToFilePath,
  });

  return fs.readFileSync(dumpToFilePath, "utf8");
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
      /http:\/\/ty\.lerscott\.local/g,
      "https://watercoo.lerscott.com"
    );
  }

  // if forDev, replace prod with local url
  if (forDev) {
    dump = dump.replace(
      /https:\/\/watercoo\.lerscott\.com/g,
      "http://ty.lerscott.local"
    );
  }

  fs.writeFileSync(dumpToFilePath, dump, "utf-8");

  console.log("DB back up complete :)~");

  return;
};

getDump().then(prepare);
