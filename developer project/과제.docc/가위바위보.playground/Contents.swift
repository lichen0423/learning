import Cocoa

typealias Hand = String
let rock: Hand = "rock"
let scissors: Hand = "scissors"
let paper: Hand = "paper"

typealias Result = String
let win: Result = "win"
let draw: Result = "draw"
let lose: Result = "lose"

let choice : Set<Hand> = [rock, scissors, paper]


func gameStart(myHand playerHand: Hand ,computerHand: Hand) -> Result {
    guard choice.contains(playerHand) && choice.contains(computerHand) else {
        print("Please choose between rock, paper, scissors.")
        return "No result"
    }
    guard playerHand == computerHand else {
        let hands = (playerHand, computerHand)
        switch hands {
        case (rock, scissors), (scissors, paper), (paper, rock) :
            return win
        default :
            return lose
        }
    }
    return draw
}


print(gameStart(myHand: rock, computerHand: paper) == lose ? "✅" : "❌")
print(gameStart(myHand: rock, computerHand: scissors) == win ? "✅" : "❌")
print(gameStart(myHand: rock, computerHand: rock) == draw ? "✅" : "❌")
print(gameStart(myHand: scissors, computerHand: paper) == win ? "✅" : "❌")
print(gameStart(myHand: scissors, computerHand: scissors) == draw ? "✅" : "❌")
print(gameStart(myHand: scissors, computerHand: rock) == lose ? "✅" : "❌")
print(gameStart(myHand: paper, computerHand: paper) == draw ? "✅" : "❌")
print(gameStart(myHand: paper, computerHand: scissors) == lose ? "✅" : "❌")
print(gameStart(myHand: paper, computerHand: rock) == win ? "✅" : "❌")
