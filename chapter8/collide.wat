(module
  (global $cnvs_size (import "cnvs_size") i32)

  (global $no_hit_color (import "env" "no_hit_color") i32)
  (global $hit_color (import "env" "hit_color") i32)
  (global $obj_start (import "env" "obj_start") i32)
  (global $obj_cnt (import "env" "obj_cnt") i32)

  (global $x_offset (import "env" "x_offset") i32)
  (global $y_offset (import "env" "y_offset") i32)
  (global $xv_offset (import "env" "xv_offset") i32)
  (global $yv_offset (import "env" "yv_offset") i32)
  (import "env" "buffer" (memory 80))

  (func $clear_canvas
    (local $i i32)
    (local $pixel_bytes i32)
    global.get $cnvs_size
    global.get $cnvs_size
    i32.mul

    i32.const 4
    i32.mul

    local.set $pixel_bytes

    (loop $pixel_loop
      (i32.store (local.get $i) (i32.const 0xff_00_00_00))

      (i32.add (local.get $i) (i32.const 4))
      local.set $i

      (i32.lt_u (local.get $i) (local.get $pixel_bytes))
      br_if $pixel_loop
    )
  )

  (func $abs)
)
