"use strict";

const worker = require("./lib/worker");

console.log("Starting up k3s-mongo-sidecar");

worker
  .init()
  .then(worker.workloop)
  .catch((err) =>
    console.error("Error trying to initialize k3s-mongo-sidecar", err)
  );
