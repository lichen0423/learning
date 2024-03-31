import Cocoa

typealias Hand = String
let rock: Hand = "rock"
let scissors: Hand = "scissors"
let paper: Hand = "paper"

typealias Result = String
let win: Result = "win"
let draw: Result = "draw"
let lose: Result = "lose"
typealias SystemMessage = String
let choiceError: SystemMessage = "Please choose between rock, paper, scissors."
let choiceYourHand: SystemMessage = "Please choice your hand between rock, paper, scissors."
let choiceComputerHand: SystemMessage = "Please choice computer's hand between rock, paper, scissors."


let choice : Set<Hand> = [rock, scissors, paper]

func 묵찌빠(myHand playerHand: Hand ,computerHand: Hand) -> Result {
    guard choice.contains(playerHand) && choice.contains(computerHand) else {
        print(choiceError)
        return 재실행()
    }
    guard playerHand == computerHand else {
        let hands = (playerHand, computerHand)
        switch hands {
        case (rock, scissors), (scissors, paper), (paper, rock) :
            print()
            return afterWin()
        default :
            print()
            return afterLose()
        }
    }
    print("The attacker has not been decided. Please play rock,paper,scissors again.")
    return 재실행()
}

func 재실행() -> Result {
    guard let playerHand = readLine() else {
        print(choiceYourHand)
        return 재실행()
    }
    guard let computerHand = readLine() else {
        print(choiceComputerHand)
        return 재실행()
    }
    guard choice.contains(playerHand) && choice.contains(computerHand) else {
        print(choiceError)
        return 재실행()
    }
    guard playerHand == computerHand else {
        let hands = (playerHand, computerHand)
        switch hands {
        case (rock, scissors), (scissors, paper), (paper, rock) :
            print(choiceYourHand)
            return afterWin()
        default :
            print(choiceComputerHand)
            return afterLose()
        }
    }
    print("The attacker has not been decided. Please play rock,paper,scissors again.")
    return 재실행()
}

func afterWin() -> Result {
    guard let playerHand = readLine() else {
        print(choiceError)
        return 재실행()
    }
    guard let computerHand = readLine() else {
        print(choiceError)
        return 재실행()
    }
    guard choice.contains(playerHand) && choice.contains(computerHand) else {
        print(choiceError)
        return afterWin()
    }
    guard playerHand == computerHand else {
        let hands = (playerHand, computerHand)
        switch hands {
        case (rock, scissors), (scissors, paper), (paper, rock) :
            print("You are attacker. Please choose between rock, paper, scissors.")
            return afterWin()
        default :
            print("You are defencer. Please choose between rock, paper, scissors.")
            return afterLose()
            
        }
    }
    return "You Win"
}


func afterLose() -> Result {
    guard let playerHand = readLine() else {
        print(choiceYourHand)
        return 재실행()}
    guard let computerHand = readLine() else {
        print(choiceComputerHand)
        return 재실행()}
    guard choice.contains(playerHand) && choice.contains(computerHand) else {
        print(choiceError)
        return afterLose()
    }
    guard playerHand == computerHand else {
        let hands = (playerHand, computerHand)
        switch hands {
        case (rock, scissors), (scissors, paper), (paper, rock) :
            print("You are attacker. Please choose between rock, paper, scissors.")
            return afterWin()
        default :
            print("You are defencer. Please choose between rock, paper, scissors.")
            return afterLose()
            
        }
    }
    return "You Lose"
}
