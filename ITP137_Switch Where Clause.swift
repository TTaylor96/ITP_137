var x = Int.random(in: 10...20)
print(x)
switch x {
  case x where x % 2 == 0:
    print("composite")
  case x where x % 3 == 0:
    print("composite")
  case x where x % 5 == 0:
    print("composite")
  case x where x % 7 == 0:
    print("composite") 
  default:
    print("prime")
}