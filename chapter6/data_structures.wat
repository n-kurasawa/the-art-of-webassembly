(module
  (import "env" "mem" (memory 1))
  (global $obj_base_addr (import "env" "obj_base_addr") i32)
  (global $obj_count (import "env" "obj_count") i32)
  (global $obj_stride (import "env" "obj_stride") i32)

  (global $x_offset (import "env" "x_offset") i32)
  (global $y_offset (import "env" "y_offset") i32)
  (global $radius_offset (import "env" "radius_offset") i32)
  (global $collision_offset (import "env" "collision_offset") i32)
)
