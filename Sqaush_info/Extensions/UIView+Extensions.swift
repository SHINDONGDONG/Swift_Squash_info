//
//  UIView+Extensions.swift
//  Sqaush_info
//
//  Created by 申民鐡 on 2022/09/05.
//

import Foundation
import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
