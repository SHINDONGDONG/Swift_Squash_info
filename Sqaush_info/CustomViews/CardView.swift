//
//  CardView.swift
//  Sqaush_info
//
//  Created by 申民鐡 on 2022/09/04.
//

import Foundation
import UIKit

class CardView: UIView{

    override init(frame: CGRect) {
        super.init(frame: frame)
        initalSetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initalSetup()
    }
    
    private func initalSetup() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = .zero
        layer.cornerRadius = 10
        layer.shadowOpacity = 0.1
    }
}
