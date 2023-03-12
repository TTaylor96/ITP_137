import Glibc
import Foundation

let first_name : String
print("Enter your first name: ")
first_name = readLine()!

var learning_to_code : Bool = true

if learning_to_code {
  print("You got this, " + first_name + "!")
}
/////////////////////////////////////
/////////////////////////////////////
import Glibc
import Foundation

let first_name : String
let last_name : String
var entered_password : String
let password : String = "ITP137"

print("Enter your first name: ")
first_name = readLine()!
print("Enter your last name: ")
last_name = readLine()!
print("Enter your password: ")
entered_password = readLine()!


if entered_password == password{
  print("Name: \(last_name), \(first_name)")
  print("Login successful.")
}
else{
  print("Invalid credentials.")
}