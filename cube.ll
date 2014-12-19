define i32 @cube(i32 %x) {
  %sqr = mul i32 %x, %x
  %cube = mul i32 %x, %sqr
  ret i32 %cube
}
