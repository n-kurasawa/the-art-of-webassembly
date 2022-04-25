(module
  (import "env" "mem" (memory 1))
  (global $data_addr (import "env" "data_addr") i32)
  (global $data_count (import "env" "data_count") i32)
)