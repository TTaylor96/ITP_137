import Foundation
import Glibc

print("\nEnter a string of characters:")
var test_string = readLine()!
var highest_count = 0
var highest_char: Character = "_"

// test_string.forEach { char in
for char in test_string{
  var test_index = char
  var test_count = 0
  // test_string.forEach { test_char in
  for test_char in test_string{
    if test_index == test_char{
      test_count += 1
    }
  }
  if test_count > highest_count{
     highest_count = test_count
     highest_char = char
  }
}

print("\nMost common character: " + String(highest_char) + "\nCount of highest character: " + String(highest_count))