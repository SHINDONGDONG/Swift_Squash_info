//
//  HomeViewController.swift
//  Sqaush_info
//
//  Created by 申民鐡 on 2022/08/31.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configures()
    }

    
    //MARK: - Configures
    func configures() {
        view.backgroundColor = .tertiarySystemGroupedBackground
        title = "Home"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

}
