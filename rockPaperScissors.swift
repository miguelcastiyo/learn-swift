// Rock, Paper, Scissors!!
// Miguel Castillo
// 03-19-2023

/// Grabs the choice of the user and checks it for validity.
/// @userInput: The user's choice (rock, paper, or scissors!)
/// @return: User input (if valid).
func getUserChoice(userInput: String) -> String {
  // checking for valid input.
  if userInput == "rock" || userInput == "paper" || userInput == "scissors" {
    return userInput
  } else {
    return "You can only enter rock, paper, or scissors. Try again."
  }
}

/// Randomly generates a choice for the computer opponent.
/// @return: Choice (rock, paper, or scissors).
func getComputerChoice() -> String {
  let randomNumber = Int.random(in: 0...2)

  switch randomNumber {
    case 0:
      return "rock"
    case 1:
      return "paper"
    case 2:
      return "scissors"
    default:
      return "Something went wrong"
  }
}

/// Dermines the winner of the game.
/// @userChoice: The user's choice (rock, paper, or scissors!)
/// @compChoice: The computer's' choice (rock, paper, or scissors!)
/// @return: A string that established the winner.
func determineWinner(_ userChoice: String, _ compChoice: String) -> String {

  var decision: String = "It's a tie!!"

  switch userChoice {
    case "rock":
      if compChoice == "paper" {
        decision = "The computer won!"
      } else if compChoice == "scissors" {
        decision = "The user won!"
      }
    case "paper":
      if compChoice == "rock" {
        decision = "The user won!"
      } else if compChoice == "scissors" {
        decision = "The computer won!"
      }
    case "scissors":
      if compChoice == "rock" {
        decision = "The computer won!"
      } else if compChoice == "paper" {
        decision = "The user won!"
      }
    default:
      print("Something went wrong")
  }
  return decision
}

// Playing the game!
let userChoice = getUserChoice(userInput: "paper")
let compChoice = getComputerChoice()

// Output phase
print("You threw \(userChoice)...")
print("The computer threw \(compChoice)...")
print(determineWinner(userChoice, compChoice))