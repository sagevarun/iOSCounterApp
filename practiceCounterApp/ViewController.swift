//
//  ViewController.swift
//  practiceCounterApp
//
//  Created by Varun Saxena on 09/09/24.
//

import UIKit

class ViewController: UIViewController {

    let diceImagesArr : [UIImage] = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    @IBOutlet weak var scoreCounter: UILabel!
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBAction func rollButtonPushed(_ sender: UIButton) {
        let val1 = Int.random(in: 0...5)
        let val2 = Int.random(in: 0...5)
        diceImageView1.image = diceImagesArr[val1]
        diceImageView2.image = diceImagesArr[val2]
        scoreCounter.text = "\(val1 + val2 + 2)"
        scoreCounter.textAlignment = .center
    }
}

