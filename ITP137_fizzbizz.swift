import Foundation
import Glibc

var num: Int = 1

while num <= 100{
  var fizz: Bool = num % 3 == 0 //"variable never mutated" warning, seems harmless
  var bizz: Bool = num % 5 == 0
  if fizz && bizz{ //maybe case structure is better?
    print("FizzBizz")
  }
  else if fizz{
    print("Fizz")
  }
  else if bizz{
    print("Bizz")
  }
  else{
    print(num)
  }
  num += 1
}
