//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Emilio Contreras on 30/08/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var settingLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    var propinaPersona = 0.0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = String (propinaPersona)
    }
   
    
    @IBAction func recalculatePressed(_ sender: Any) {
        
    }
    

  
}
