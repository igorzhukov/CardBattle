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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: UIButton) {
        
        let playerRandomNumber = Int(arc4random_uniform(13))
        playerImageView.image = UIImage(named: cardsArray[playerRandomNumber])
        
        let cpuRandomNumber = Int(arc4random_uniform(13))
        cpuImageView.image = UIImage(named: cardsArray[cpuRandomNumber])
        
        // Compare the card numbers 
        if playerRandomNumber > cpuRandomNumber {
            playerScore += 1
            playerScoreLabel.text = String(playerScore)
        } else if playerRandomNumber == cpuRandomNumber {
            //nothing to do in that case
        } else {
            cpuScore += 1
            cpuScoreLabel.text = String(cpuScore)
        }
        
    }
    

}

