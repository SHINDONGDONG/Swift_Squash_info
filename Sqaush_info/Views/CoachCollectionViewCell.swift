//
//  CoachCollectionViewCell.swift
//  Sqaush_info
//
//  Created by 申民鐡 on 2022/09/04.
//

import UIKit
import Kingfisher

class CoachCollectionViewCell: UICollectionViewCell {
    //MARK: - Properties
    @IBOutlet weak var coachImageView: UIImageView!
    @IBOutlet weak var coachTitleLb: UILabel!
    @IBOutlet weak var coachDescriptionLb: UILabel!
    @IBOutlet weak var coachPriceLb: UILabel!
    
    
    //MARK: - Init
    
    
    //MARK: - Configures
    static let identifier = String(describing: CoachCollectionViewCell.self)

    func setup(coach: Coach) {
        coachImageView.kf.setImage(with: coach.image.asUrl)
        coachTitleLb.text = coach.title
        coachDescriptionLb.text = coach.description
        coachPriceLb.text = coach.formattedPrice + "（30分）"
    }
}
