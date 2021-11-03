//
//  ViewController.swift
//  Love Calculator
//
//  Created by Tanvir Rahman on 25.10.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var hearOne: UIImageView!
    
    @IBOutlet weak var loveProgressBar: UIProgressView!
    @IBOutlet weak var startRollLabel1: UILabel!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textfield1: UITextField!
    var seconds = 20
    var timer = Timer()
    var sum = 0.00
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
   
 
    @IBAction func startNowbutton(_ sender: UIButton) {
        loveProgressBar.progress = 0.0
        timer.invalidate()
        seconds = 0
        sum = 0.00
        startRollLabel1.text = "Start a Roll"
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        //var n:Int = Int.random(in: 1...100)
    }
        
    @objc func updateTimer(){
        if seconds < 20 {
            sum += 0.05
            //print(sum)
            if sum >= 1{
                hearOne.image = #imageLiteral(resourceName: "Untitled design-2")
            }
            loveProgressBar.progress = Float(sum)
            if seconds>=10 && seconds<=15 {
                hearOne.image = #imageLiteral(resourceName: "Untitled design")
            }
            
            seconds += 1
            //print(seconds)
        }else{
            timer.invalidate()
            if textfield1.text == "Tanvir" && textField2.text == "Smrity" {
                startRollLabel1.text = "100%. This Couple gonna marry on february!"

            }else if textField2.text == "Tanvir" && textfield1.text == "Smrity" {
                startRollLabel1.text = "100%. This Couple gonna marry on february!"
            }
            else{
            let n:Int = Int.random(in: 1...100)
            if n>=40 && n<50 {
                       startRollLabel1.text = String(n) + "%. Too week Relationship!"
                   }
                   if n>=50 && n<60 {
                       startRollLabel1.text = String(n) + "%. Weak Relationship!"
                   }
                   if n>=60 && n<70 {
                       startRollLabel1.text = String(n) + "%. Not so well Relationship!"

                   }
                   if n>=70 && n<80 {
                       startRollLabel1.text = String(n) + "%. Well Relationship!"

                   }
                   if n>=80 && n<90 {
                       startRollLabel1.text = String(n) + "%. Too Good Relationship!"

                   }
                   if n>=90 && n<=100 {
                       startRollLabel1.text = String(n) + "%. Best relationship!"

                   }
            if n<40 {
                startRollLabel1.text = String(n) + "%. Bondig Too weak!"
            }
                
            }
        }
    }
    
}

