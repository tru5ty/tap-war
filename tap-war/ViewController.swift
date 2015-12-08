//
//  ViewController.swift
//  tap-war
//
//  Created by Nathan McGuire on 8/12/2015.
//  Copyright © 2015 Nathan McGuire. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var bottomButton: UIButton!
    
    @IBOutlet weak var orangeLabel: UILabel!
    @IBOutlet weak var purpleLabel: UILabel!
    
    @IBOutlet weak var endGameButton: UIButton!
    
    @IBOutlet weak var orangeWinLbl: UILabel!
    @IBOutlet weak var purpleWinLbl: UILabel!
    
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        score = 0
        purpleLabel.text = "\(score)"
        orangeLabel.text = "\(score)"
        
        orangeLabel.transform = CGAffineTransformMakeRotation(3.14)
        orangeWinLbl.transform = CGAffineTransformMakeRotation(3.14)
        
        endGameButton.hidden = true
        orangeWinLbl.hidden = true
        purpleWinLbl.hidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func orangeButtonTouched(sender: AnyObject) {
        score++
        purpleLabel.text = "\(score)"
        orangeLabel.text = "\(score)"
        
        testScore()
    }
    
    @IBAction func purpleButtonTouched(sender: AnyObject) {
        score--
        purpleLabel.text = "\(score)"
        orangeLabel.text = "\(score)"
        
        testScore()
    }
    
    func testScore() {
        if score >= 10 {
            endGameButton.hidden = false
            orangeWinLbl.hidden = false
            purpleWinLbl.hidden = false
            
            orangeWinLbl.text = "Winner!"
            purpleWinLbl.text = "Loser..."
        } else if score <= -10 {
            endGameButton.hidden = false
            orangeWinLbl.hidden = false
            purpleWinLbl.hidden = false
            
            orangeWinLbl.text = "Loser..."
            purpleWinLbl.text = "Winner!"
        }
    }

    @IBAction func endGameAction(sender: AnyObject) {
        endGameButton.hidden = true
        orangeWinLbl.hidden = true
        purpleWinLbl.hidden = true
        
        score = 0
        purpleLabel.text = "\(score)"
        orangeLabel.text = "\(score)"
    }
}

