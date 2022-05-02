const colors = require("colors");
const fs = require("fs");
const bytes = fs.readFileSync(__dirname + "/data_structures.wasm");

const memory = new WebAssembly.Memory({ initial: 1 });
const mem_i32 = new Uint32Array(memory.buffer);
