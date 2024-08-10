//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ProgressBar: UIProgressView!
    @IBOutlet weak var Question: UILabel!
    @IBOutlet weak var True: UIButton!
    @IBOutlet weak var False: UIButton!
    @IBOutlet weak var Progress: UIProgressView!
    var timer :Timer?
    var seconds = 3;
    var nPreguntas: Int?
    
    let quizz=[Pregunta(pregunta: "Four + Two is equal to Six", respuesta: "True"),Pregunta(pregunta: "Five - Three is grater than One", respuesta: "True"),Pregunta(pregunta: "Three+ Eight is less than Ten", respuesta: "False")]
    
    var i = 0
    var f = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
    }
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
    
        let userAnswer = sender.currentTitle
        if (quizz[i].comprobarRespuesta(userAnswer!)){
            i+=1
            sender.backgroundColor=UIColor.green
            var nPreguntas = quizz.count
                        Question.text=quizz[i].pregunta
                        var progreso = calcularProgreso(nPreguntas, i)
                        print(progreso)
                        Progress.progress=progreso
            
            if (i == quizz.count){
                i=0
            }
            Question.text = quizz[i].pregunta
        }else{
            sender.backgroundColor=UIColor.red
        }
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
      
    }
    @objc func updateTimer() {
          if seconds > 0 {
              seconds -= 1
          } else {
              timer?.invalidate()
              timerDidFinish()
          }
      }
    func calcularProgreso (_ NPreguntas: Int ,_ numerodePregunta: Int)->Float{
        if (numerodePregunta != 0){
            var porcentajeDelaPregunta = (NPreguntas*100)/numerodePregunta
                    var progreso: Float = Float(porcentajeDelaPregunta)/100.0
                    return progreso
        }
        else{
            return 0
        }
        
    }
      
    
    func timerDidFinish(){
        True.backgroundColor=UIColor.clear
        False.backgroundColor=UIColor.clear
        
    }
    

}
struct Pregunta{
    var pregunta:String;
    var respuesta:String;
    
    func comprobarRespuesta(_ respuesta:String)->Bool{
        if (respuesta==self.respuesta){
            return true
        }else{
            return false
        }
    }
    
}

