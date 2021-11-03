//
//  ViewController.swift
//  Soundme
//
//  Created by Tanvir Rahman on 23.10.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var soundImagebox1: UIImageView!
    @IBOutlet weak var iAmHearYouLebel1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var x = 0
    @IBAction func soundMeButton1(_ sender: Any) {
        if x%2 == 0{
            soundImagebox1.image = #imageLiteral(resourceName: "Music pic1-2")
            iAmHearYouLebel1.text = "   Yes I'm Hear You Now"
        }else{
            soundImagebox1.image = #imageLiteral(resourceName: "Music pic1")
            
            iAmHearYouLebel1.text = "  Im Not Listening Now"
        }
        x += 1
        
        //print("I'm Listening You!")
    }
    
}

