//
//  HomeViewController.swift
//  DonutsApp
//
//  Created by Cristian guillermo Romero garcia on 03/08/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var donutCollection: UICollectionView!
    
    private let dona = [
        Donut(title: "Dona de chocolate", donutDescription: "Dona recien horneada con deliciosa cobertura de chocolate, te encantara,", clories: "850", price: 27.90),
        Donut(title: "Dona de vainilla", donutDescription: "Dona recien horneada con deliciosa cobertura de vainilla, Disfrutala,", clories: "750", price: 28.90),
        Donut(title: "Dona de fresa", donutDescription: "Dona recien horneada con deliciosa cobertura de fresa, para que te pongas fresa,", clories: "800", price: 30.90),
        Donut(title: "Dona de Chispas", donutDescription: "Dona recien horneada con coloridas chispas multicolor, Disfrutala,", clories: "850", price: 26.90),
        Donut(title: "Dona de azucar", donutDescription: "Dona recien horneada expolvoreada en azucar Disfrutala,", clories: "900", price: 25.90)
    ]
    
    override func viewDidLoad() {
        donutCollection.register(UINib(nibName: "DonutCollectionViewCell", bundle: .main), forCellWithReuseIdentifier: "DonutCell")
        donutCollection.setCollectionViewLayout(generateLayOut(), animated: true)
        donutCollection.dataSource = self
            
        }
        
        func generateLayOut()-> UICollectionViewLayout{
            let itemSize = NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1),
                heightDimension: .fractionalHeight(1)
            )
            
            let item = NSCollectionLayoutItem(
                layoutSize: itemSize
            )
            
            let groupSize = NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1),
                heightDimension: .fractionalHeight(1/2)
            )
            
            let group = NSCollectionLayoutGroup.horizontal(
                layoutSize: groupSize,
                repeatingSubitem: item,
                count: 1
            )
            let spacing: CGFloat = 10
            group.contentInsets =  NSDirectionalEdgeInsets(
                top: spacing,
                leading: spacing,
                bottom: 0,
                trailing: spacing
            )
            
            let section = NSCollectionLayoutSection(group: group)
            
            let layout = UICollectionViewCompositionalLayout(section: section)
            
            
            
            return layout
        }
        
        
        
        
}

extension HomeViewController: UICollectionViewDataSource{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dona.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DonutCell", for: indexPath)as? DonutCollectionViewCell{
            let donut = dona[indexPath.item]
            cell.setUp(withdonut: donut)
            return cell
        }
        return UICollectionViewCell()
    }
}





        
