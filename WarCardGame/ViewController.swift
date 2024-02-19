//
//  ViewController.swift
//  WarCardGame
//
//  Created by Jesus on 15/2/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
     
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    //variable declarations
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func dealTapped(_ sender: Any) {
    
        // Randomize numbers
        let leftNumber = Int.random(in: 2...14)
        print(leftNumber)
        
        let rightNumber = Int.random(in: 2...14)
        print(rightNumber)
        
        //Change the imagview by name with random numbers
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        //Conditional that changes de score label from the left and right
        if leftNumber > rightNumber {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber < rightNumber {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else {
            
        }
        
        
        
    }
    
}

