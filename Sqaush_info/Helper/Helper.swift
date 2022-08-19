//
//  Helper.swift
//  Sqaush_info
//
//  Created by 申民鐡 on 2022/08/19.
//

import Foundation

func delay(duration: Double, completion: @escaping ()-> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now()+duration, execute: completion)
}
