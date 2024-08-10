//
//  HomeViewController.swift
//  MyFisrtApp
//
//  Created by Emilio Contreras on 01/08/23.
//

import UIKit

class HomeViewController: UIViewController {
    var user = User(name: "", phone: "", email: "", edad: 0)
    
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var AgeLabel: UILabel!
    @IBOutlet weak var Boton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print ("ViewDidLoad")
        setUpID()

        // Do any additional setup after loading the view.
    }
    @IBAction func ActionBoton(_ sender: Any) {
        let firstStoryboard = UIStoryboard(name: "FirstViewStoryboard", bundle: .main)
        let firstViewController = firstStoryboard.instantiateViewController(withIdentifier: "FirstVC")as! FirstViewController
        self.navigationController?.pushViewController(firstViewController, animated: true)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print ("ViewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print ("ViewDidDissapear")
    }
    func setUpID(){
        NameLabel.text=user.name
        emailLabel.text=user.email
        phoneLabel.text=user.phone
        AgeLabel.text="\(user.edad)"
        Boton.setTitle("Push", for: .normal)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
