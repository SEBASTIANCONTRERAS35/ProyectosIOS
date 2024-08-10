//
//  loginViewController.swift
//  EjemploTabBar2
//
//  Created by ios dev lab fi unam on 03/08/23.
//

import UIKit

class loginViewController: UIViewController {

    @IBOutlet var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        
    }
    
    @IBAction func loginAction(_ sender: Any) {
        let homeViewController = TabBarController()
        homeViewController.modalPresentationStyle = .fullScreen
        self.present(homeViewController, animated: true)
    }
    
    private func setUp(){
        title = "Login"
        loginButton.setTitle("Ingresar", for: .normal)
    }
}
