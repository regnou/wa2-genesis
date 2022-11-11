import { writeFile } from "node:fs/promises";
// import * as fs from "fs";
import { Buffer } from "node:buffer";
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
    const file =
      "/Users/yo/0HOME/0WEBAGENCY/0GH/GENESIS/axelo/src/site_js/web-agency/src/routes/+page.svelte";
    const msg = `<script lang="ts">
    import Cell from "@regnou.a/ui-cell"
    import Header from "@regnou.a/ui-header"
  </script>
  <Header/>
  <Header/>
  <Header/>
  <Cell/>
  <Cell/>`;
    const data = new Uint8Array(Buffer.from(`${msg}`));
    const promise = writeFile(file, data, { signal });
    // const data = new Uint8Array(Buffer.from(`jojoax`));
    // const promise = writeFile("./toto.txt", data, { signal });
    // Abort the request before the promise settles.
    // controller.abort();
    await promise;
  } catch (err) {
    // When a request is aborted - err is an AbortError
    console.error(err);
  }
};
main();
