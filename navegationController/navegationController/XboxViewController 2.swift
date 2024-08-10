//
//  XboxViewController.swift
//  navegationController
//
//  Created by Wendy on 02/08/23.
//

import UIKit
import WebKit

class XboxViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var xboxImage: UIImageView!
    
    @IBOutlet weak var xboxWeb: WKWebView!
    
    
    func setUp () {
        title = "Xbox"
        xboxWeb.load(URLRequest())
        xboxImage.image  = UIImage(named: "xboxImage")
    }

    

}
