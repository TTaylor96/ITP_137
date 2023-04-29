import Foundation
import Glibc

let morse_dict:[Character: String] = [
  "a": ".-",
  "b": "-...",
  "c": "-.-.",
  "d": "-..",
  "e": ".",
  "f": "..-.",
  "g": "--.",
  "h": "....",
  "i": "..",
  "j": ".---",
  "k": "-.-",
  "l": ".-..",
  "m": "--",
  "n": "-.",
  "o": "---",
  "p": ".--.",
  "q": "--.-",
  "r": ".-.",
  "s": "...",
  "t": "-",
  "u": "..-",
  "v": "...-",
  "w": ".--",
  "x": "-..-",
  "y": "-.--",
  "z": "--..",
  "1": ".----",
  "2": "..---",
  "3": "...--",
  "4": "....-",
  "5": ".....",
  "6": "-....",
  "7": "--...",
  "8": "---..",
  "9": "----.",
  "0": "-----",
  ",": "--..--",
  ".": ".-.-.-",
  " ": " ", //only 1 space but encoder adds a space after each character, which results in 3 spaces total
  "'": ".----.",
  "?": "..--..",
  ":": "---...",
  "-": "-....-",
  "/": "-..-.",
  "(": "-.--.",
  ")": "-.--.-"
]
var message_string = "I'm going to encrypt this in morse code. I made my encrypter accept punctuation (it was fun, but was it worth it?)"
var encrypted_string = ""

message_string = message_string.lowercased()
for char in message_string{
  if (morse_dict.contains{$0.key == char}){
    encrypted_string.append(morse_dict[char]!)
    encrypted_string.append(" ")
  }
}
print(encrypted_string)

var morse_char: String = ""
var decrypted_string: String = ""
var prepped_string = encrypted_string.replacingOccurrences(of: "   ", with: "|") //replaced 3 spaces for word break with pipe to help decryption

for char in prepped_string{
  if char == " "{
    decrypted_string.append(morse_dict.first(where: {$0.value == morse_char})!.key)
    morse_char = ""
  }
  else if char == "|"{
    decrypted_string.append(morse_dict.first(where: {$0.value == morse_char})!.key)
    decrypted_string.append(" ")
    morse_char = ""
  }
  else {
    morse_char.append(char)
  }
}
print("\n", decrypted_string)