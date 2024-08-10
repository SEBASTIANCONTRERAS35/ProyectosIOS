//
//  User.swift
//  MyFisrtApp
//
//  Created by Emilio Contreras on 01/08/23.
//

import Foundation

struct User {
    let name: String
    let phone:String
    let email:String
    let edad: Int
    
    init(name: String, phone: String, email: String, edad: Int) {
        self.name = name
        self.phone = phone
        self.email = email
        self.edad = edad
    }
    
}
