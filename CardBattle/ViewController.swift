//
//  ViewController.swift
//  CardBattle
//
//  Created by Igor Zhukov on 1/10/17.
//  Copyright © 2017 Igor Zhukov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var playerImageView: UIImageView!
    @IBOutlet weak var playerScoreLabel: UILabel!
    var playerScore = 0
    
    @IBOutlet weak var cpuImageView: UIImageView!
    @IBOutlet weak var cpuScoreLabel: UILabel!
    var cpuScore = 0
    
    let cardsNamesArray = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    var cardsArray = [Card]()
    
    
    func cardsInit(from arrayWithCardsNames: [String]) {
        for (index, cardName) in cardsNamesArray.enumerated()  {
            let card = Card()
            card.name = cardName
            card.value = index
            self.cardsArray.append(card)
        }
    }
        
        
        
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // cardsArray init for further parsing
            cardsInit(from: cardsNamesArray)
            
        }
        
        
        @IBAction func dealTapped(_ sender: UIButton) {
            
            var arrayWithRandomNumber = [0, 0]
            
            for i in 0...1 {
                arrayWithRandomNumber[i] = Int(arc4random_uniform(13))
            }
            
            let playerImageName = UIImage(named: cardsArray[arrayWithRandomNumber[0]].name!)
            playerImageView.image = playerImageName
            
            let cpuImageName = UIImage(named: cardsArray[arrayWithRandomNumber[1]].name!)
            cpuImageView.image = cpuImageName
            
            

            
            
//            // Compare the card numbers
//            if arrayWithRandomNumber[0] > arrayWithRandomNumber[1] {
//                playerScore += 1
//                playerScoreLabel.text = String(playerScore)
//            } else if arrayWithRandomNumber[0] == arrayWithRandomNumber[1] {
//                //nothing to do in that case
//            } else {
//                cpuScore += 1
//                cpuScoreLabel.text = String(cpuScore)
//            }
            
        }
        
        
}

