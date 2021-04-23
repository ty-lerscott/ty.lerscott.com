const fs = require("fs");
const Importer = require("mysql-import");
const { parsed: env } = require("dotenv").config({
  path: "./client/.env.local",
});

const dumpToFilePath = "./mysql/ty_lerscott.sql";

const importer = new Importer({
  host: env.DB_HOST,
  user: env.DB_USER,
  password: env.DB_PASS,
  database: env.DB_NAME,
});

// New onProgress method, added in version 5.0!
importer.onProgress((progress) => {
  var percent =
    Math.floor((progress.bytes_processed / progress.total_bytes) * 10000) / 100;
  console.log(`${percent}% Completed`);
});

importer
  .import(dumpToFilePath)
  .then(() => {
    var files_imported = importer.getImported();
    console.log(`${files_imported.length} SQL file(s) imported.`);
  })
  .catch((err) => {
    console.error(err);
  });
