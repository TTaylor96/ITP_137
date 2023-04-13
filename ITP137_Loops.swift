import Foundation
import Glibc
for x in 1...100{
  x % 2 == 0 ? print("\(x) is even") : print("\(x) is odd")
}

print("\nEnter a number: ")
var prime_test: Int = Int.random(in: 2...50)//Int(readLine()!)!
var is_prime: Bool = true
for factor in 2...prime_test / 2{
  if prime_test % factor == 0{
    is_prime = false
    break
  }
}
is_prime ? print("\(prime_test) is prime.") : print("\(prime_test) is not prime.")

print("\nEnter a string: ")
var string_test: String = readLine()!
var string_count: Int = 0
for _ in string_test{
  string_count += 1
}
print("\(string_count) characters in string.\n")

var star_pattern: String = ""
for _ in 1...4{
  star_pattern = star_pattern + "*"
  print(star_pattern)
}