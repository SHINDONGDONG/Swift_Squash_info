//
//  InfoViewController.swift
//  Sqaush_info
//
//  Created by 申民鐡 on 2022/08/31.
//

import UIKit

class InfoViewController: UIViewController {
    @IBOutlet weak var squashItem1ImageView: UIImageView!
    @IBOutlet weak var squashItem2ImageView: UIImageView!
    @IBOutlet weak var squashItem3ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configures()
    }

    
    //MARK: - Configures
    func configures() {
        view.backgroundColor = .tertiarySystemGroupedBackground
//        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Squash Information"
        imageConfigures()
    }
    
    func imageConfigures() {
        squashItem1ImageView.layer.cornerRadius = squashItem1ImageView.frame.width / 2
        squashItem1ImageView.layer.masksToBounds = true
        squashItem1ImageView.layer.borderColor = UIColor.systemCyan.cgColor
        squashItem1ImageView.layer.borderWidth = 4
        squashItem2ImageView.layer.cornerRadius = squashItem2ImageView.frame.width / 2
        squashItem2ImageView.layer.masksToBounds = true
        squashItem2ImageView.layer.borderColor = UIColor.systemMint.cgColor
        squashItem2ImageView.layer.borderWidth = 4
        squashItem3ImageView.layer.cornerRadius = squashItem3ImageView.frame.width / 2
        squashItem3ImageView.layer.masksToBounds = true
        squashItem3ImageView.layer.borderColor = UIColor.systemPink.cgColor
        squashItem3ImageView.layer.borderWidth = 4
    }

}
