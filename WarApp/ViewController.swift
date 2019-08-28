//
//  ViewController.swift
//  WarApp
//
//  Created by Vikass s on 28/08/19.
//  Copyright © 2019 Vikass s. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
//        Dispose of any resources that can bew recreated
    }
    
    @IBAction func dealTapped(_ sender: Any) {
        //Randomize two numbers
        let leftRandomNumber = arc4random_uniform(13) + 2
        
        
        let rightRandomNumber = arc4random_uniform(13) + 2
       
       // change the image views
       leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        // Change the numbers
        if leftRandomNumber > rightRandomNumber{
            // update the score
            leftScore += 1
            
            // update the label
            leftScoreLabel.text = String(leftScore)
        }
        else if rightRandomNumber > leftRandomNumber{
            // update the score
            rightScore += 1
            
            // update the label
            rightScoreLabel.text = String(rightScore)
        }
        else if leftRandomNumber == rightRandomNumber{
            
        }
    
    }
    
    

    
}

