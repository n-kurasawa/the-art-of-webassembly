const colors = require("colors");
const fs = require("fs");
const bytes = fs.readFileSync(__dirname + "/data_structures.wasm");

const memory = new WebAssembly.Memory({ initial: 1 });
const mem_i32 = new Uint32Array(memory.buffer);

const obj_base_addr = 0;
const obj_count = 32;
const obj_stride = 16;

const x_offset = 0;
const y_offset = 4;
const radius_offset = 8;
const collision_offset = 12;
