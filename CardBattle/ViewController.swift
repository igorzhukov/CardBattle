//
//  ViewController.swift
//  CardBattle
//
//  Created by Igor Zhukov on 1/10/17.
//  Copyright © 2017 Igor Zhukov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cpuImageView: UIImageView!
    @IBOutlet weak var playerImageView: UIImageView!
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var cpuScoreLabel: UILabel!
    
    let cardsArray = ["ace", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jcak", "queen", "king"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: UIButton) {
        
        var playerRandomNumber = arc4random_uniform(13)
        playerImageView.image = UIImage(named: cardsArray[palyerRandomNumber])
        
    }
    

}

