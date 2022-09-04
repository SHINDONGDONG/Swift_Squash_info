//
//  PresentManager.swift
//  Sqaush_info
//
//  Created by 申民鐡 on 2022/09/04.
//

import Foundation
import UIKit


class PresentManager {
    
    static let shared = PresentManager()
    
    private init(){}
    
    enum VC {
        case mainTabBarController
        case shopController
    }
    
    func show(vc: VC) {
        var viewController : UIViewController?
        
        switch vc {
        case .mainTabBarController:
            viewController = UIStoryboard(name: K.StoryboardId.main, bundle: nil).instantiateViewController(withIdentifier: K.StoryboardId.showTabController)
        case .shopController:
            viewController = nil
        }
        if let sence = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate,
           let window = sence.window {
            window.rootViewController = viewController
            
            UIView.transition(with: window, duration: 0.5, options: .transitionCrossDissolve, animations: nil, completion: nil)
        }
        
    }
    
}
