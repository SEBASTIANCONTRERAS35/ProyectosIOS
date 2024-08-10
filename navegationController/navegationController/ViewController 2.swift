//
//  ViewController.swift
//  navegationController
//
//  Created by Wendy on 02/08/23.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    
    // MARK - OULETS
    
    @IBOutlet weak var myMapView: MKMapView!
    @IBOutlet weak var myFirstImage: UIImageView!
    @IBOutlet weak var mySecondImage: UIImageView!
    
    
    // MARK - FUNTIONS
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    private func setUp () {
        myFirstImage.image = UIImage(named: "otroLogo")
        mySecondImage.image = UIImage(systemName: "photo.on.rectangle")
        myMapView.centerCoordinate = CLLocationCoordinate2D(latitude: 46.227638, longitude: 2.213749)
    }
    
    
    
}

