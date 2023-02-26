import Foundation
import Glibc

print("\nThis script will solve a quadratic equation.")
print("\nEnter a:")
var a = Float(readLine()!)!

print("\nEnter b:")
var b = Float(readLine()!)!

print("\nEnter c:")
var c = Float(readLine()!)!

var numerator_1 = -b + sqrt(pow(b,2) - 4 * a * c) //maybe better to break this up into more variables for better readability? 
var numerator_2 = -b - sqrt(pow(b,2) - 4 * a * c)
var denominator = 2 * a

print("/nYour first zero is: " + String(numerator_1 / denominator))
print("Your second zero is: " + String(numerator_2 / denominator))