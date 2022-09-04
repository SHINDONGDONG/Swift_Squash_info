//
//  Coach.swift
//  Sqaush_info
//
//  Created by 申民鐡 on 2022/09/05.
//

import Foundation

struct Coach {
    let title, description, id, image: String
    let price: Int
    
    var formattedPrice: String {
        return "Price : \(price)" 
    }
}
