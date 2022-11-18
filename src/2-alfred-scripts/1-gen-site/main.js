import { writeFile } from "node:fs/promises";
// import * as fs from "fs";
import { Buffer } from "node:buffer";
import { SITE_TPL } from "./const-tpl.js";
import { FILEPATH_GEN_SITE_1 } from "./const-data.js";
// deploy modules on npm ?
// modify package.json ?
// $$$ modify 1-site-genreated/web-agency
// we want to add 2 cell to this file
const main = async () => {
  try {
    const controller = new AbortController();
    const { signal } = controller;
    const data = new Uint8Array(Buffer.from(`${SITE_TPL}`));
    const promise = writeFile(FILEPATH_GEN_SITE_1, data, { signal });
    // const data = new Uint8Array(Buffer.from(`jojoax`));
    // const promise = writeFile("./toto.txt", data, { signal });
    // Abort the request before the promise settles.
    // controller.abort();
    await promise;

    // $$$ LOG
    console.log("ALFRED REPORT");
    console.log("☕☕☕☕☕☕☕☕☕☕☕☕☕☕☕☕☕☕\n");
    console.log("(1) FILE SUCCESSFULY WRITTEN: \n", FILEPATH_GEN_SITE_1);
    console.log("\n☕☕☕☕☕☕☕☕☕☕☕☕☕☕☕☕☕☕");
  } catch (err) {
    // When a request is aborted - err is an AbortError
    console.error(err);
  }
};
main();
