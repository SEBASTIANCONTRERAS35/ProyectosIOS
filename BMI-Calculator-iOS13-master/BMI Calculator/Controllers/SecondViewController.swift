//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Emilio Contreras on 29/08/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var bmi = "0.0"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        let label = UILabel()
        label.text = bmi
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
    
}
