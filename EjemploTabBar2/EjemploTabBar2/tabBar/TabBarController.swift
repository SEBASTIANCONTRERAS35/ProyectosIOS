//
//  TabBarController.swift
//  EjemploTabBar2
//
//  Created by ios dev lab fi unam on 03/08/23.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabBar()
    }
    
    private func setUpTabBar(){
        //Creacion de una pestaña de TabBar
        
        let firstStoryboard = UIStoryboard(name: "Main", bundle: .main)
        let firstViewController = firstStoryboard.instantiateViewController(withIdentifier: "firstVC")
        let firstNavigation = UINavigationController(rootViewController: firstViewController)
        firstNavigation.tabBarItem.title = "Inicio"
        firstNavigation.tabBarItem.image = UIImage(systemName: "a.circle")
        firstNavigation.tabBarItem.selectedImage = UIImage(systemName: "a.circle.fill")
        
        
        let secondStoryboard = UIStoryboard(name: "secondStoryboard", bundle: .main)
        let secondViewController = secondStoryboard.instantiateViewController(withIdentifier: "secondVC")
        let secondNavigation = UINavigationController(rootViewController: secondViewController)
        secondNavigation.tabBarItem.title = "Vista 2"
        secondNavigation.tabBarItem.image = UIImage(systemName: "b.circle")
        secondNavigation.tabBarItem.selectedImage = UIImage(systemName: "b.circle.fill")
        
        let thirdStoryboard = UIStoryboard(name: "thirdStoryboard", bundle: .main)
        let thirdViewController = thirdStoryboard.instantiateViewController(withIdentifier: "thirdVC")
        let thirdNavigation = UINavigationController(rootViewController: thirdViewController)
        thirdNavigation.tabBarItem.title = "Vista 3"
        thirdNavigation.tabBarItem.image = UIImage(systemName: "c.circle")
        thirdNavigation.tabBarItem.selectedImage = UIImage(systemName: "c.circle.fill")
        
        let homeViewController: [UIViewController] = [firstNavigation, secondNavigation, thirdNavigation]
        self.viewControllers = homeViewController
        self.selectedIndex = 0
    }

}
