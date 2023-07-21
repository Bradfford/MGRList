//
//  ViewController.swift
//  MGRList
//
//  Created by Millfford Robert Lima Bradshaw on 18/07/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.view.bounds = UIWindow().coordinateSpace.bounds
        self.view.backgroundColor = .blue
    }

}

