var x = Int.random(in: 10...20)
var prime: Bool = true
print(x)
for y in 2...x / 2{
  if x % y == 0{
    prime = false
    break
  }
} 
prime ? print("prime") : print("composite")