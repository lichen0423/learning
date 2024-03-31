//
//  ViewController.swift
//  묵찌빠_ver.2
//
//  Created by 이재영 on 2024/03/25.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var computerHandLable: UILabel!
    
    @IBOutlet weak var gameGuideMessageLable: UILabel!
    
    @IBOutlet weak var playerBattleHistiryLable: UILabel!
    
    @IBOutlet weak var playerFaceReactionLable: UILabel!
    
    @IBOutlet weak var rockHandButtonLable: UIButton!
    @IBOutlet weak var scissorsHandButtonLable: UIButton!
    @IBOutlet weak var paperHandButtonLable: UIButton!
    
    private var player = Player()
    
    
    @IBAction func selectPaperHandButton(_ sender: Any) {
    }
    
    @IBAction func selectScissorsHandButton(_ sender:Any) {
    }
    
    @IBAction func selectRockHandButton(_ sender: Any) {
    }
    
    private func firstRoundGameJudge(playerHand: Hand, computerHand: Hand) {
        if playerHand.rawValue == (computerHand.rawValue + 1) % 3 {
            self.player.position = .attack
        } else if playerHand.rawValue < computerHand.rawValue {
            self.player.position = .defense
        } else {
            self.player.position = .noPosition
        }
    }
    
    private func secondRoundGameJudge(playerHand: Hand, computerHand: Hand) -> Result {
        if playerHand.rawValue == (computerHand.rawValue + 1) % 3 {
            self.player.position = .attack
            return .undecided
        } else if playerHand.rawValue < computerHand.rawValue {
            self.player.position = .defense
            return .undecided
        } else if player.position == .attack {
            self.player.position = .noPosition
            return .win
        } else {
            self.player.position = .noPosition
            return .lose
        }
    }
    
    
}

enum Hand: Int {
    case rock = 0
    case scissors = 1
    case paper = 2
    case noHand
}

enum Positon {
    case attack
    case defense
    case noPosition
}

enum Result {
    case win
    case lose
    case undecided
}

struct BattleHistory {
    var numberOfWin: Int = 0
    var numberOfLose: Int = 0
}

struct Player {
    var position: Positon = .noPosition
    var battleHistory = BattleHistory()
    var hand: Hand = .noHand
    
}
