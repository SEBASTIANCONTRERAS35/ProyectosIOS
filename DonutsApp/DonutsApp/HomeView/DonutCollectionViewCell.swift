//
//  CollectionViewCell.swift
//  DonutsApp
//
//  Created by Cristian guillermo Romero garcia on 03/08/23.
//

import UIKit

class DonutCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var donutImage: UIImageView!
    @IBOutlet weak var descriptionDonutLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setUp(withdonut dona: Donut){
        descriptionLabel.text = "Descripción"
        donutImage.image = UIImage(named: "DonutImage")
        titleLabel.text = dona.title
        descriptionDonutLabel.text = dona.donutDescription
        caloriesLabel.text = "Calorias: \(dona.clories) cal"
        priceLabel.text = "$\(dona.price) mxn."
        
    }

}
