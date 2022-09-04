//
//  GroupViewController.swift
//  Sqaush_info
//
//  Created by 申民鐡 on 2022/08/31.
//

import UIKit

class GroupViewController: UIViewController {

    //MARK: - Properties
    @IBOutlet weak var groupCollectionView: UICollectionView!
    @IBOutlet weak var circleCollectionView: UICollectionView!
    @IBOutlet weak var coachCollectionView: UICollectionView!
    
    
    var groupList: [Recruitment] = [
        .init(id: "id1", title: "募集", image: "https://cdn-icons-png.flaticon.com/512/5288/5288680.png"),
        .init(id: "id2", title: "サークル", image: "https://cdn-icons-png.flaticon.com/512/2008/2008376.png"),
        .init(id: "id3", title: "学校", image: "https://cdn-icons-png.flaticon.com/512/2633/2633933.png"),
        .init(id: "id4", title: "みんな", image: "https://cdn-icons-png.flaticon.com/512/3491/3491778.png"),
        .init(id: "id5", title: "素人", image: "https://cdn-icons-png.flaticon.com/512/5144/5144683.png"),
        .init(id: "id6", title: "ベテラン", image: "https://cdn-icons-png.flaticon.com/512/2041/2041493.png"),
    ]
    
    var circleList: [Circle] = [
        .init(id: "id1", title: "募集", description: "スカッシュをやりましょう", limit: "6", image: "https://m.media-amazon.com/images/I/514W45XB5pL.jpg"),
        .init(id: "id2", title: "募集", description: "スカッシュをやりましょう", limit: "12", image: "https://cdn-icons-png.flaticon.com/512/3491/3491778.png"),
        .init(id: "id3", title: "募集", description: "スカッシュをやりましょう", limit: "10", image: "https://cdn-icons-png.flaticon.com/512/3491/3491778.png"),
        .init(id: "id4", title: "募集", description: "スカッシュをやりましょう", limit: "18", image: "https://cdn-icons-png.flaticon.com/512/2008/2008376.png"),
        .init(id: "id5", title: "募集", description: "スカッシュをやりましょう", limit: "22", image: "https://cdn-icons-png.flaticon.com/512/2008/2008376.png"),
        .init(id: "id6", title: "募集", description: "スカッシュをやりましょう", limit: "61", image: "https://cdn-icons-png.flaticon.com/512/2008/2008376.png"),
    ]
    
    var coachList: [Coach] = [
        .init(title: "渡辺", description: "誠実に教えます。", id: "id1", image: "https://m.media-amazon.com/images/I/514W45XB5pL.jpg", price: 2200),
        .init(title: "木下", description: "誠実に教えます。", id: "id2", image: "https://cdn-icons-png.flaticon.com/512/2008/2008376.png", price: 21100),
        .init(title: "森下", description: "誠実に教えます。", id: "id3", image: "https://cdn-icons-png.flaticon.com/512/2041/2041493.png", price: 6100),
        .init(title: "安倍", description: "誠実に教えます。", id: "id4", image: "https://cdn-icons-png.flaticon.com/512/2008/2008376.png", price: 8200),
    ]
    
    //MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configures()
    }

    
    
    //MARK: - Configures
    func configures() {
        view.backgroundColor = .tertiarySystemGroupedBackground
        title = "仲間募集"
        navigationController?.navigationBar.prefersLargeTitles = false
        Cellregister()
        print("$coach collection : \(coachCollectionView.frame.width)")
        
    }
    
    func Cellregister() {
        groupCollectionView.register(UINib(nibName: recruitmentCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: recruitmentCollectionViewCell.identifier)
        
        circleCollectionView.register(UINib(nibName: CircleCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CircleCollectionViewCell.identifier)
        
        coachCollectionView.register(UINib(nibName: CoachCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CoachCollectionViewCell.identifier)
    }
}


//MARK: - Extensions
extension GroupViewController:UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case groupCollectionView:
            return groupList.count
        case circleCollectionView:
            return circleList.count
        case coachCollectionView:
            return coachList.count
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if collectionView == coachCollectionView { return UIEdgeInsets(top: 0, left: 42, bottom: 0, right: 42) }
        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == coachCollectionView { return 84 }
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == coachCollectionView { return 84 }
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case groupCollectionView:
            guard let cell = groupCollectionView.dequeueReusableCell(withReuseIdentifier: recruitmentCollectionViewCell.identifier, for: indexPath) as? recruitmentCollectionViewCell else {
                return UICollectionViewCell()
            }
            cell.setup(recruitment: groupList[indexPath.row])
            return cell
        case circleCollectionView:
            guard let cell = circleCollectionView.dequeueReusableCell(withReuseIdentifier: CircleCollectionViewCell.identifier, for: indexPath) as? CircleCollectionViewCell else {
                return UICollectionViewCell()
            }
            cell.setup(circle: circleList[indexPath.row])
            return cell
        case coachCollectionView:
            guard let cell = coachCollectionView.dequeueReusableCell(withReuseIdentifier: CoachCollectionViewCell.identifier, for: indexPath) as? CoachCollectionViewCell else {
                return UICollectionViewCell()
            }
            let tableWidth = coachCollectionView.frame.width
            let cellWidth = cell.frame.width
            let minus = tableWidth - cellWidth
            print("$ minus : \(minus)")
            cell.setup(coach: coachList[indexPath.row])
            return cell
        default:
            return UICollectionViewCell()
        }
    }
    
}
