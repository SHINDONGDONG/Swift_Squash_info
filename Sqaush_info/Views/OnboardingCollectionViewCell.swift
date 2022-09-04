//
//  OnboardingCollectionViewCell.swift
//  Sqaush_info
//
//  Created by 申民鐡 on 2022/08/22.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    static let identifier = "OnboardingCollectionViewCell"
    
    //MARK: - Properties
    @IBOutlet weak var slideImageView: UIImageView!
    
    //MARK: - Configures
    func configure(image: UIImage) {
        slideImageView.image = image
    }
}
