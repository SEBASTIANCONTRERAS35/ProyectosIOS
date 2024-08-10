//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UISceneDelegate {
    
    
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPcButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var twentyPcButton: UIButton!
    @IBOutlet weak var tenPcButton: UIButton!
    
    @IBOutlet weak var Stepper: UIStepper!
    
    var propinaTotal = 0.0
    
    @IBAction func tipChanged(_ sender: UIButton) {
        deseleccionarBotones()
        seleccionarBoton(sender)
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper){
        let NPersonas = Int(sender.value)
        splitNumberLabel.text = String(NPersonas)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier=="PropinaScreen"){
            _ = segue.destination as! ResultsViewController
            let resultadosPantalla = ResultsViewController()
            resultadosPantalla.propinaPersona = propinaTotal
        }
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let propina = calcularProcentaje()
        propinaTotal  = Double(propina ?? 1)/Stepper.value
       
        self.performSegue(withIdentifier: "PropinaScreen", sender: self)

    }
    
    func seleccionarBoton(_ boton:UIButton){
        boton.isSelected=true
    }
    
    func deseleccionarBotones(){
        zeroPcButton.isSelected=false
        tenPcButton.isSelected=false
        twentyPcButton.isSelected=false
    }
    
    func calcularProcentaje() -> Double? {
        guard let total = Double(billTextField.text ?? "") else {
            return nil
        }
        
        if zeroPcButton.isSelected {
            return 0.0
        } else if tenPcButton.isSelected {
            return (total * 10.0) / 100.0
        } else if twentyPcButton.isSelected {
            return (total * 20.0) / 100.0
        }
        
        return nil
    }
    

}

