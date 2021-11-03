//
//  ViewController.swift
//  Dice_Roll
//
//  Created by Tanvir Rahman on 22.10.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceSet1: UIImageView!
    @IBOutlet weak var diceSet2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
        diceSet1.image = #imageLiteral(resourceName: "DiceSix")

    }
    

}

