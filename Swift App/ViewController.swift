//
//  ViewController.swift
//  Swift App
//
//  Created by Todd Routhier on 10/4/16.
//  Copyright © 2016 Firestream Cloud Solutions Inc. All rights reserved..
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var theLabel: UILabel!
    
    @IBOutlet weak var firstNum: UITextField!
    
    @IBOutlet weak var secondNum: UITextField!
    
    @IBAction func buttonAdditTapped(_ sender: Any) {
        theLabel.text = "\(Double(firstNum.text!)! + Double(secondNum.text!)!)"    
        
    }
    var tapCount = 0
    
    @IBAction func buttonTapped(_ sender: Any) {
        tapCount += 1
        if tapCount >= 4 {
            theLabel.text = "Stop, that's tap #\(tapCount)"
        } else {
            theLabel.text = "Thanks for tap #\(tapCount)"
        }
        
    }
    
    @IBAction func changeTxtButtonTapped(_ sender: Any) {
        theLabel.text = "Buttons are cool!"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


}

