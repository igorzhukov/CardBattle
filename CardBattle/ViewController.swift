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
    
    
    
    
    let cardsArray = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func dealTapped(_ sender: UIButton) {
        
        var arrayWithRandomNumber = [0, 0]
        
        for i in 1...2 {
            arrayWithRandomNumber[i-1] = Int(arc4random_uniform(13))
        }
        
        playerImageView.image = UIImage(named: cardsArray[arrayWithRandomNumber[0]])
        
        cpuImageView.image = UIImage(named: cardsArray[arrayWithRandomNumber[1]])
        
        
        // Compare the card numbers
        if arrayWithRandomNumber[0] > arrayWithRandomNumber[1] {
            playerScore += 1
            playerScoreLabel.text = String(playerScore)
        } else if arrayWithRandomNumber[0] == arrayWithRandomNumber[1] {
            //nothing to do in that case
        } else {
            cpuScore += 1
            cpuScoreLabel.text = String(cpuScore)
        }
        
    }
    
    
}

