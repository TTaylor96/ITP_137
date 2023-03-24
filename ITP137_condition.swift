import Foundation
import Glibc

print("\nEnter a string of characters:")
var test_string = readLine()!
var highest_count = 0
var highest_char: Character = "_"
var found_chars: String = ""

for char in test_string{
  var test_count = 0
  var new_char = true
  // checks to see if character has already been counted
  for old_char in found_chars{
    if char == old_char{
      new_char = false
      break
    }
  }
  // if character is new, append to string and count how many
  if new_char{
    found_chars.append(char)
    for test_char in test_string{
      if char == test_char{
        test_count += 1
      }
    }
  }
  if test_count > highest_count{
     highest_count = test_count
     highest_char = char
  }
  test_string.removeFirst() //characters that have been tested are removed from the initial string
}

print("\nMost common character: " + String(highest_char) + "\nCount of highest character: " + String(highest_count))