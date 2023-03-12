import Foundation
import Glibc

//var course_code = "hello world"
//print(type(of:course_code))
//print(course_code)

//var temp = 0.0
//print("input a number:")
//temp = Double(readLine()!)!
//print(temp)

//var num_one = Int(readLine()!)!
//var num_two = Int(readLine()!)!
//var sum = num_one + num_two
//print("The sum of your numbers is " + String(sum))

// var num_3 = Int(readLine()!)!
// var num_4 = Int(readLine()!)!
// var div = num_3 / num_4
// print("The quotient of your numbers is " + String(div))
// var mod = num_3 % num_4
// print("The remainder of your numbers is " + String(mod))

// while true{
// print("Input an integer:")
// var num = Int(readLine()!)!
// if num % 2 == 1{
//   print("Your number is odd.")
// }
// else{
//   print("Your number is even.")
// }
// print("")
// }

let iterate = 3
print("Input an integer:")
var num: Int
num = Int(readLine()!)!

while num <= 100{
  print(num)
  num *= iterate
}
