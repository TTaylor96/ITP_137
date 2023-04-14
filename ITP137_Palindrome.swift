import Foundation
import Glibc
var palin_test = "Was it a car or a cat I saw?"
var test_array: [String] = []
var is_palindrome: Bool = true
for x in palin_test{
  if x.isLetter{
    test_array.append(x.lowercased())
  }
}
var index_max = test_array.count - 1
print(test_array.count)
for index in 0...index_max{
  if test_array[index] != test_array[index_max - index]{
    is_palindrome = false
    break
  }
}
is_palindrome ? 
print("\"\(palin_test)\" is a palindrome") :
print("\"\(palin_test)\" is NOT a palindrome")
// if is_palindrome{
//   print("\"\(palin_test)\" is a palindrome")
// }
// else{
//   print("\"\(palin_test)\" is NOT a palindrome")
// }