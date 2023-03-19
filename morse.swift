// Morse Decoder
// Miguel Castillo
// 03-18-2023


// Variables
var englishText = "this is a secret message"
var secretMessage = ".... --- .-- -.. -.--   .--. .- .-. - -. . .-."
var morseText: String = ""

// Morse to Latin letter mappings.
var letterToMorse: [String: String] = [
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
  "z": "--.."
]


for element in englishText {

  // Checking to see if it is safe to unwrap variable.
  if let morseChar = letterToMorse["\(element)"] {
    morseText += morseChar + " "
  } else {
    morseText += "   "
  }
}

// Decoding Message
var decodedMessage: String = ""
var morseCodeArray = [String]()
var currMorse: String = ""

for char in secretMessage {
  if char != " " {
    currMorse.append(char)
  } else {
    switch currMorse {
      case "":
        currMorse += " "
      case " ":
        currMorse.append(" ")
        currMorse = ""
      default:
        morseCodeArray.append(currMorse)
        currMorse = ""
    }
  }
}

morseCodeArray.append(currMorse)

var morseToLetter: [String: String] = [:]

for (letter, morseChar) in letterToMorse {
  morseToLetter[morseChar] = letter
}

for morseValue in morseCodeArray {
  if let letterChar = morseToLetter[morseValue] {
    decodedMessage += letterChar
  } else {
    decodedMessage += " "
  }
}

print(decodedMessage)