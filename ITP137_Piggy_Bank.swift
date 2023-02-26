import Foundation
import Glibc

let pesos_rate = 0.000206675
let reais_rate = 0.191936
let soles_rate = 0.261699


print("\nEnter the amount of Colombian Pesos in your bank:")
var pesos = Double(readLine()!)!

print("\nEnter the amount of Brazilian Reais in your bank:")
var reais = Double(readLine()!)!

print("\nEnter the amount of Peruvian Soles in your bank:")
var soles = Double(readLine()!)!

var USD = pesos * pesos_rate + reais * reais_rate + soles * soles_rate

print("\nUS Dollars: $" + String(format: "%.2f", USD))