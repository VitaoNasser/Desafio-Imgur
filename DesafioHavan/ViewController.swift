//
//  ViewController.swift
//  DesafioHavan
//
//  Created by Rodrigo Dias on 11/09/21.
//

import UIKit
import Alamofire


class ViewController: UIViewController /* , UICollectionViewDataSource */ {
    
//    @IBOutlet var collectionView: UICollectionView!

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let searchController = UISearchController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Search imgur image"
        navigationItem.searchController = searchController
        
//        collectionView.dataSource = self
                
    }
    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return xxx.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath) as! CustomCollectionViewCell
//
//
//        return cell
//    }


}



