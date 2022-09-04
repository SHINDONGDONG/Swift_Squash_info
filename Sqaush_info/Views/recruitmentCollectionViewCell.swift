//
//  recruitmentCollectionViewCell.swift
//  Sqaush_info
//
//  Created by 申民鐡 on 2022/09/04.
//

import UIKit
import Kingfisher


class recruitmentCollectionViewCell: UICollectionViewCell {
    static let identifier = String(describing: recruitmentCollectionViewCell.self)
    
    @IBOutlet weak var recruitmentImageView: UIImageView!
    @IBOutlet weak var recruitmentTitleLb: UILabel!
    

    func setup(recruitment: Recruitment) {
        recruitmentImageView.kf.setImage(with: recruitment.image?.asUrl)
        recruitmentTitleLb.text = recruitment.title
    }

}
