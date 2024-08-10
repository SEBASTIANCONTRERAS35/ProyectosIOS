//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Emilio Contreras on 29/08/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var bmiValue:String?
    var colorBackGround: UIColor?;
    var resultadoTexto: String?
    var colorResultado: UIColor?
    

    @IBOutlet weak var BmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        BmiLabel.text = bmiValue
        BmiLabel.textColor = colorResultado
        view.backgroundColor=colorBackGround
        adviceLabel.text = resultadoTexto
        adviceLabel.textColor = colorResultado
        
    }
    @IBAction func recalculatePress(_ sender: UIButton) {
        self.dismiss(animated: true,completion: nil)
    }
    

   
    
}
