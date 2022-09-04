//
//  CircleCollectionViewCell.swift
//  Sqaush_info
//
//  Created by 申民鐡 on 2022/09/04.
//

import UIKit

class CircleCollectionViewCell: UICollectionViewCell {
    static let identifier = String(describing: CircleCollectionViewCell.self)
    
    @IBOutlet weak var titleLb: UILabel!
    @IBOutlet weak var circleImageView: UIImageView!
    @IBOutlet weak var limitLb: UILabel!
    @IBOutlet weak var descriptionLb: UILabel!


    func setup(circle: Circle) {
        titleLb.text = circle.title
        circleImageView.kf.setImage(with: circle.image.asUrl)
        limitLb.text = "定員 : " + circle.limit + "人"
        descriptionLb.text = circle.description
    }

}
