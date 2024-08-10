//
//  SignUpViewController.swift
//  MyFisrtApp
//
//  Created by Cristian guillermo Romero garcia on 31/07/23.
//

import UIKit

class SignUpViewController: UIViewController {
    //mark outlets
    
    @IBOutlet weak var labelLogo: UILabel!
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var logoLabel: UILabel!
    @IBOutlet weak var Banner: UIView!
    @IBOutlet weak var Edad: UILabel!
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var Switch: UISwitch!
    @IBOutlet weak var Imagen: UIImageView!
    @IBOutlet weak var Registrar: UILabel!
    @IBOutlet weak var Nombre: UITextField!
    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var Telefono: UITextField!
    @IBOutlet weak var EdadSlider: UISlider!
    
    @IBOutlet weak var MayorEdadAviso: UILabel!
    @IBOutlet weak var boton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print ("ViewDidLoad")
        setUpID()

        // Do any additional setup after loading the view.
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
    
    
    @IBAction func ageSwitchChanged(_ sender: Any) {
        switchisOn()
    }
    
    @IBAction func EdadSliderChange(_ sender: Any) {
        print(EdadSlider.value)
        logoLabel.text="\(EdadSlider.value)"
    }
    @IBAction func didPressConfirmButton(_ sender: Any) {
        guard let name=Nombre.text,
              let telefono=Telefono.text,
              let email=Email.text else { return}
        if name.isEmpty||telefono.isEmpty||email.isEmpty{
            Label.text="Error al registrar"
        }
        else {
            Label.text="Registrado"
            switchisOn()
            let newUser=User(name: name, phone: telefono, email: email, edad: Int(EdadSlider.value))
            PresentHomeModule(withUser: newUser)
           
        }
    }
    
    func setUpID(){
        //MARK:Label
        logoLabel.text="Photo Edit"
        Email.placeholder="Email"
        Edad.text="Soy Mayor de edad"
        Registrar.text="Registrate"
        Imagen.image=UIImage(named:"Logo" )
        logoImage.layer.cornerRadius=logoImage.bounds.height/2
        logoImage.clipsToBounds=true
        Nombre.placeholder="Nombre"
        Telefono.placeholder="Telefono"
        Email.placeholder="Email"
        EdadSlider.isEnabled=false
        EdadSlider.maximumValue=16
        EdadSlider.maximumValue=90
        Switch.isOn=false
        boton.isEnabled=false
        boton.setTitle("Registrate", for: .normal)
        
    }

    func switchisOn(){
        if Switch.isOn==true{
            MayorEdadAviso.text="Cumples con los requisitos "
        }
    }
    
    func PresentHomeModule(withUser user:User){
        let homeStoryBoard=UIStoryboard(name:"HomeStoryboard",bundle: .main)
        let homeViewController=homeStoryBoard.instantiateViewController(withIdentifier: "HomeVC") as! HomeViewController
        homeViewController.user=user
        let homeNavigation=UINavigationController(rootViewController: homeViewController)
        homeViewController.modalPresentationStyle = .fullScreen
    
        self.present(homeNavigation,animated:true)
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
