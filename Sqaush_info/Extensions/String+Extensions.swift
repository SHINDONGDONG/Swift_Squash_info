//
//  String+Extensions.swift
//  Sqaush_info
//
//  Created by 申民鐡 on 2022/09/04.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
