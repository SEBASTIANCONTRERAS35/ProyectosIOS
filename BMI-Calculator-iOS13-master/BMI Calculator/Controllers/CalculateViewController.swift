//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
  var bmiValorString = "0.0"
    @IBOutlet weak var LabelPeso: UILabel!
    @IBOutlet weak var LabelALtura: UILabel!
    @IBOutlet weak var alturaSlider: UISlider!
    @IBOutlet weak var pesoSlider: UISlider!
    var BMI:Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("hola")
        LabelALtura.text="Digita tu altura"
        LabelPeso.text="Digita tu peso"
    }
    
    @IBAction func alturaSlider(_ sender: Any) {
        let altura:Double=Double(alturaSlider.value)
        LabelALtura.text=String(format: "%.2f", altura)
        
    }
    @IBAction func pesoSlider(_ sender: Any) {
        let peso:Double=Double(pesoSlider.value)
        LabelPeso.text=String(format: "%.2f", peso)
            }
    
    @IBAction func caluculatePressButton(_ sender: UIButton) {
        let altura=alturaSlider.value
        let peso=pesoSlider.value
         BMI=(peso)/pow(altura, 2)
        bmiValorString = String (format: "%.1f", BMI)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultsViewController
            var resultadoTexto : String
            if (BMI>18 && BMI<25.1){
                resultadoTexto = "Vamos por unas palomas"
                destinationVC.colorResultado = .green
                destinationVC.colorBackGround = .blue
                print (BMI)
            }
            else if (BMI<18){
                resultadoTexto = "COME ALGO PORFAVOR"
                destinationVC.colorResultado = .orange
                destinationVC.colorBackGround = .darkGray
            }
            else {
                resultadoTexto = "HAZ EJERCICIO"
                destinationVC.colorResultado = .red
                destinationVC.colorBackGround = .black
            }
            
            destinationVC.bmiValue = bmiValorString
            destinationVC.resultadoTexto = resultadoTexto
            
        }
    }
}

