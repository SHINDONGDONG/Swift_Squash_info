//
//  ViewController.swift
//  Sqaush_info
//
//  Created by 申民鐡 on 2022/08/19.
//

import UIKit

class LoadingViewController: UIViewController {

    //MARK: - Properties
    private var isUserLogin = false
    
    //MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        configures()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        delay(duration: 2.0) {
            self.showInitailView()
        }
    }

    //MARK: - Configures
    func configures() {
    }
    
    private func showInitailView() {
        //login - main
        //no login - onboarding
        if isUserLogin {
            
        } else {
//            let onboardingVC = UIStoryboard(name: K.StoryboardId.main, bundle: nil).instantiateViewController(withIdentifier: K.StoryboardId.onboardingViewController)
//            navigationController?.pushViewController(onboardingVC, animated: true)
            performSegue(withIdentifier: K.Segue.showOnboarding, sender: nil)
        }
    }

}

