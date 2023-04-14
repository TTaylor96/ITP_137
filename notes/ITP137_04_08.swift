import Foundation
import Glibc
var num_array = [2, 4, 3, 6, 1, 9]
var sum_even = 0
var prod_odd = 1
for item in num_array{
  
  if item % 2 == 0{
    sum_even += item
  }
  else{
    prod_odd *= item
  }
}
print("Sum of evens: \(sum_even)")
print("Product of odds: \(prod_odd)")