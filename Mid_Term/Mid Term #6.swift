func lots_of_math(_ a: Int, _ b: Int, _ c: Int, _ d: Int) -> Int{
  let e = a + b
  print(e)
  let f = c - d
  print(f)
  let g = e * f
  print(g)
  return(g % a)
}
print(lots_of_math(4, 5, 3, 1))