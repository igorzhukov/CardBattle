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
    
    
    func cardsInitUsing(_: [String]) {
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
        cardsInitUsing(cardsNamesArray)
        
    }
    
    
    @IBAction func dealTapped(_ sender: UIButton) {
        
        var arrayWithRandomNumber = [0, 0]
        
        for i in 0...1 {
            arrayWithRandomNumber[i] = Int(arc4random_uniform(13))
        }
        
        // MARK:  - set assets to player and cpu cardViews
        guard let playerImageString = cardsArray[arrayWithRandomNumber[0]].name else {return}
        playerImageView.image = UIImage(named: playerImageString)
        
        guard let cpuImageString = cardsArray[arrayWithRandomNumber[1]].name else {return}
        cpuImageView.image = UIImage(named: cpuImageString)
        
        
        
        
        
        // MARK: - compare the card values to update score
        guard let playerImageValue = cardsArray[arrayWithRandomNumber[0]].value else {return}
        guard let cpuImageValue = cardsArray[arrayWithRandomNumber[1]].value else {return}
        print(playerImageValue)
        print(cpuImageValue)
        
        if playerImageValue > cpuImageValue {
            playerScore += 1
            playerScoreLabel.text = String(playerScore)
        } else {
            cpuScore += 1
            cpuScoreLabel.text = String(cpuScore)
        }
        
    }
    
    
}

