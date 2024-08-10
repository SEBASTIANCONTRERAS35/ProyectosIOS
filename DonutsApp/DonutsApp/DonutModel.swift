//
//  DonutModel.swift
//  DonutsApp
//
//  Created by Cristian guillermo Romero garcia on 03/08/23.
//

import Foundation
import UIKit

struct Donut{
    
    var title: String
    var donutDescription : String
    var clories: String
    var price: Double
    
    init(title: String, donutDescription: String, clories: String, price: Double) {
        self.title = title
        self.donutDescription = donutDescription
        self.clories = clories
        self.price = price
    }
    
}
