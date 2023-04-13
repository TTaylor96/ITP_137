// In Guessing.swift, we have both a guess and a magicNum variable, each storing a random variable. We want to create a while loop that continues looping for as long as the values of both variables are different.

// Under the variable definitions (but before the last print() statement):

// Create a while loop.
// Give the loop the condition guess != magicNum.
// Reassign guess to Int.random(in: 1...10).
// Also reassign magicNum to Int.random(in: 1...10).
// Note: if you don’t reassign guess, you may end up in an infinite loop. 😱 If this happens and the program is running forever, refresh the page!


// Stuck? Get a hint
// 2.
// To find out what the values of guess and magicNum are during our loop, add a print() statement inside the loop that uses string interpolation to print out:

// You guessed [guess], and the number was [magicNum].
// Where [guess] and [magicNum] are replaced by the actual values of guess and magicNum.

import Foundation
import Glibc
var guess = Int.random(in: 1...10)
var magicNum = Int.random(in: 1...10)

while(guess != magicNum){
  print("\nGuess was \(guess)")
  print("But magic number was \(magicNum)")
  
  guess = Int.random(in: 1...10)
  magicNum = Int.random(in: 1...10)
}
print("\n\nIt's \(guess)")