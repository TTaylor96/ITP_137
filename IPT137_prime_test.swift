print("\nEnter a number: ")
var prime_test: Int = Int(readLine()!)!//Int.random(in: 2...50)
var is_prime: Bool = true
for factor in 2...prime_test / 2{
  if prime_test % factor == 0{
    print(factor)
    is_prime = false
    break
  }
}
is_prime ? print("\(prime_test) is prime.") : print("\(prime_test) is not prime.")