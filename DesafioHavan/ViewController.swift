//
//  ViewController.swift
//  DesafioHavan
//
//  Created by Rodrigo Dias on 11/09/21.
//

import UIKit
import Alamofire
import Kingfisher

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var images: [ImageModel] = []
    let preferences = UserDefaults.standard
    let searchController = UISearchController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Search imgur image"
        navigationItem.setHidesBackButton(true, animated: false)
        searchController.searchResultsUpdater = self
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let customCell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath) as! CustomCollectionViewCell
        
        if let link = images[indexPath.row].images?.first?.link, let url = URL(string: link) {
            customCell.imageView.kf.setImage(with: url)
        } else {
            customCell.imageView.image = nil
        }
    
        return customCell
    }
}

extension ViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else { return }
        APIClient.getImages(query: text, completion: { model in
            self.images = model?.data ?? []
            self.collectionView.reloadData()
        })
        
    }
    
    
}



