//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = ""
        var charIndex = 0.0
       let titletext = "⚡️FlashChat"
        for letter in titletext{
            print ("-")
            print (0.4 * charIndex)
            print (letter)
            Timer.scheduledTimer(withTimeInterval: 0.5 * Double (charIndex), repeats: false) { timer in
                self.titleLabel.text?.append(letter)
            }
            
            charIndex += 1
            
        }
        
        
       
    }
    

}
