import Foundation
func tip_calc(_ cost: Double,_ tip_percent: Double) -> Double{
  let tip_amount = cost * tip_percent
  return tip_amount.rounded() / 100
}
print("$\(tip_calc(10, 25))")