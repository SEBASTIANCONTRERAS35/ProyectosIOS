//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
class ViewController: UIViewController {


    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var decisiones=[Decision(texto: "Eres un intrépido explorador en busca de tesoros y aventuras. Un día, mientras explorabas un denso bosque, encuentras una bifurcación en el camino. A tu izquierda, ves una misteriosa ruina antigua cubierta de enredaderas. A tu derecha, escuchas el sonido relajante de las olas rompiendo en la playa cercana. ¿Hacia dónde decides ir?", opcion1: "Explorar la antigua ruina.", opcion2: "Dirigirte a la playa."),
                    Decision(texto: <#T##String#>, opcion1: <#T##String#>, opcion2: <#T##String#>)]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text=decisiones[0].texto
        storyLabel.numberOfLines = 6
            storyLabel.adjustsFontSizeToFitWidth = true
        storyLabel.minimumScaleFactor = 0.5
        choice1Button.setTitle("Explorar la antigua ruina.", for: .normal)
        choice2Button.setTitle("Dirigirte a la playa.", for: .normal)

    }
    @IBAction func ChoiseSelected(_ sender: Any) {
        
    }
    

}

