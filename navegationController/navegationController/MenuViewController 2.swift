
//  Created by Wendy on 02/08/23.
//

import UIKit

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
        // Do any additional setup after loading the view.
    }
    

   
    @IBOutlet weak var xboxBotton: UIButton!
    
    @IBOutlet weak var xboxLabel: UILabel!
    
    // play, pc, nintendo
    
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var playLabel: UILabel!
    
    @IBOutlet weak var pcButton: UIButton!
    
    @IBOutlet weak var pcLabel: UILabel!
    
    @IBOutlet weak var nintendoButton: UIButton!
    
    @IBOutlet weak var nintendoLabel: UILabel!
    
    // MARK - Actions
    
    @IBAction func xboxAction(_ sender: Any) {
        print("Xbox")
    }
    
    @IBAction func playAction(_ sender: Any) {
        print("Play")
    }
    
    
    @IBAction func pcAction(_ sender: Any) {
        print("Pc")
    }
    
    
    @IBAction func nintendoAction(_ sender: Any) {
        print("Nintendo")
    }
    
    
    
    // MARK - Funciones
    
    func setUp(){
        xboxLabel.text = "Xbox"
        playLabel.text = "Play"
        pcLabel.text = "PC"
        nintendoLabel.text = "Nintendo"
        
        xboxLabel.textColor = .black
        
        xboxBotton.setImage(UIImage(systemName: "xbox.logo"), for: .normal)
        
        playButton.setImage(UIImage(systemName: "playstation.logo"), for: .normal)
        
        pcButton.setImage(UIImage(systemName: "desktopcomputer"), for: .normal)
        
        nintendoButton.setImage(UIImage(systemName: "gamecontroller.fill"), for: .normal)
        
        xboxBotton.setTitle("", for: .normal)
        
        xboxBotton.tintColor = UIColor.green
        
        playButton.tintColor = UIColor.green
        
        playButton.setTitle("", for: .normal)
        
        pcButton.tintColor = UIColor.green
        
        pcButton.setTitle("", for: .normal)
        
        
        
        nintendoButton.setTitle("", for: .normal)
        
        nintendoButton.tintColor = UIColor.green
        
        
    }
    
    
}
