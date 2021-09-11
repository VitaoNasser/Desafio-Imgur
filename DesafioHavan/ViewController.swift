//
//  ViewController.swift
//  DesafioHavan
//
//  Created by Rodrigo Dias on 11/09/21.
//

import UIKit

class ViewController: UIViewController {

    let searchController = UISearchController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Search imgur image"
        navigationItem.searchController = searchController
    }


}

