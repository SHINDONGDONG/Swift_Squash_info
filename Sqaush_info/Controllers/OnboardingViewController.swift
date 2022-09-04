//
//  OnboardingViewController.swift
//  Sqaush_info
//
//  Created by 申民鐡 on 2022/08/19.
//

import UIKit

class OnboardingViewController: UIViewController{

    //MARK: - Properties
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var pageController: UIPageControl!
    
    //MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        configures()
    }


    //MARK: - Configures
    func configures() {
        view.backgroundColor = .secondarySystemGroupedBackground
//        register()
        setupCollectionConfigre()
        showCaption(atIndex: 0)
 
}

    func register() {
        collectionView.register(OnboardingCollectionViewCell.self, forCellWithReuseIdentifier: OnboardingCollectionViewCell.identifier)
    }
    @IBAction func startButtonAction(_ sender: Any) {
        PresentManager.shared.show(vc: .mainTabBarController)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let index = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
        showCaption(atIndex: index)
        self.pageController.currentPage = index
    }
    
    private func showCaption(atIndex index : Int) {
        let slide = Slide.collection[index]
        titleLabel.text = slide.title
        descriptionLabel.text = slide.description
    }
    
}

    //MARK: - Extensions
extension OnboardingViewController:UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Slide.collection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.identifier, for: indexPath) as? OnboardingCollectionViewCell else {
            return UICollectionViewCell()
        }
//        cell.backgroundColor = indexPath.row % 2 == 0 ? .systemPink : .systemMint
        let imageName = Slide.collection[indexPath.item].imageName
        let image = UIImage(named: imageName ?? "") ?? UIImage()
        cell.configure(image: image)
        cell.backgroundColor = .secondarySystemGroupedBackground
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return collectionView.frame.size
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
 //MARK: - collecion Configures
extension OnboardingViewController {
    func setupCollectionConfigre() {
        let view = UICollectionViewFlowLayout()
        view.scrollDirection = .horizontal
        collectionView.isPagingEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .secondarySystemGroupedBackground
        collectionView.collectionViewLayout = view
    }
    
    func setupButtonConfigure(){
    }
}

