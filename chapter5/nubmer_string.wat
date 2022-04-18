(module
  (import "env" "print_string" (func $print_string (param i32 i32)))
  (import "env" "buffer" (memory 1))

  (data (i32.const 128) "0123456789ABCDEF")
  (data (i32.const 256) "               0")
  (global $dec_string_len i32 (i32.const 16))
)
