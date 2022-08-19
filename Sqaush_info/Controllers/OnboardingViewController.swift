//
//  OnboardingViewController.swift
//  Sqaush_info
//
//  Created by 申民鐡 on 2022/08/19.
//

import UIKit

class OnboardingViewController: UIViewController{

    @IBOutlet weak var startButton: UIButton!
    
    //MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        configures()
    }


    //MARK: - Configures
    func configures() {
        view.backgroundColor = .systemPurple
}



class ViewController1:UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
    }
}

class ViewController2:UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
    }
}
class ViewController3:UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
    }
}
}

//extension OnboardingViewController:UIPageViewControllerDataSource {
//
//    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
//        return getPre(from: viewController)
//    }
//
//    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
//        return getNext(from: viewController)
//    }
//    private func getPre(from viewController: UIViewController) -> UIViewController? {
//        guard let index = pages.firstIndex(of: viewController), index - 1 >= 0 else {
//            return nil
//        }
//        self.currentVC = pages[index - 1]
//        return pages[index - 1]
//    }
//
//    private func getNext(from viewController: UIViewController) -> UIViewController? {
//        guard let index = pages.firstIndex(of: viewController), index + 1 < pages.count else {
//            return nil
//        }
//        self.currentVC = pages[index + 1]
//        return pages[index + 1]
//    }
//
//
//}
