// Caesar's Cipher
// Miguel Castillo
// 03-18-2023

// variable declarations
var alphabet: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
var secretMessage: String = "hElLo"

// Converts 'secretMessage' to be all lowecase characters for processing
secretMessage = secretMessage.lowercased()

// Array initializer
var message = Array(secretMessage)

// Processing Phase
for i in 0 ..< message.count {
  for j in 0 ..< alphabet.count {
    if message[i] == alphabet[j] {
      message[i] = alphabet[(j+3) % 26]
      break
    }
  }
}

// Prints secret message as an array
print(message)

// Converts secret message from array->string!
let secretString: String = String(message)
print(secretString)