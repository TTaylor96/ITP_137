// for num in stride(from: 3, to: 0, by: -1) {
//   print(num)
// }
import Foundation
import Glibc

// var fun_fact = "exlxephxxxaxnts xcanxx'xxt xxjumpxx."

// for char in fun_fact {
//     if char != "x"{
//       print(char)
//     }
// }

// for _ in 1...15{
//   print("all work and no play make Trip a dull girl")
// }

// for num in 1...9{

//   if num % 2 == 1{continue}
//   print(num)
// }
var guessed_num = Int.random(in: 1...15)
var loops = 0

for num in 1...15{
    loops += 1
  if num == guessed_num{
    print("It's \(guessed_num)")
    print(loops)
    break
  }
}