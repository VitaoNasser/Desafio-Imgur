//
//  ViewController.swift
//  DesafioHavan
//
//  Created by Rodrigo Dias on 11/09/21.
//

import UIKit
import Alamofire
import WebKit
import OAuthSwift


class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let searchController = UISearchController()
    
    let filterImageNames = [
    "comic", "sepia", "halftone", "crystallize", "noir", "vignette"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Search imgur image"
        navigationItem.setHidesBackButton(true, animated: false)
        navigationItem.searchController = searchController
        
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let customCell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath) as! CustomCollectionViewCell
        
        customCell.imageView.image = UIImage(named: filterImageNames[indexPath.row])
        
        return customCell
    }
    
}



