import { writeFile } from "node:fs/promises";
// import * as fs from "fs";
import { Buffer } from "node:buffer";
import { WEB_AGENCY_CONTENT, WEB_AGENCY_FILE } from "./2-transfo-site--data.js";
//   &&&
//   &&&
//   &&&
// deploy modules on npm ?
// modify package.json ?
// $$$ modify site_js/web-agency
// we want to add 2 cell to this file
const main = async () => {
  try {
    const controller = new AbortController();
    const { signal } = controller;
    const data = new Uint8Array(Buffer.from(`${WEB_AGENCY_CONTENT}`));
    const promise = writeFile(WEB_AGENCY_FILE, data, { signal });
    // const data = new Uint8Array(Buffer.from(`jojoax`));
    // const promise = writeFile("./toto.txt", data, { signal });
    // Abort the request before the promise settles.
    // controller.abort();
    await promise;
    console.log("FILE SUCCESSFULY WRITTEN: ", WEB_AGENCY_FILE);
  } catch (err) {
    // When a request is aborted - err is an AbortError
    console.error(err);
  }
};
main();
