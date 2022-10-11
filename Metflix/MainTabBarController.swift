//
//  MainTabBarController.swift
//  Metflix
//
//  Created by 정명곤 on 2022/10/11.
//

import UIKit

class MainTabBarController: UITabBarController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setController()
    }
    
    private func setController() {
        let home = MainViewController()
        home.title = "List"
        let recommend = RecommendViewController()
        recommend.title = "New & Hot"
        let stored = StoredViewController()
        stored.title = "저장된 콘텐츠"
        
        let nav1 = UINavigationController(rootViewController: home)
        let nav2 = UINavigationController(rootViewController: recommend)
        let nav3 = UINavigationController(rootViewController: stored)
        
        nav1.tabBarItem = UITabBarItem(title: "홈", image: UIImage(systemName: "house"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "NEW & HOT", image: UIImage(systemName: "house"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "저장된 콘텐츠", image: UIImage(systemName: "arrow"), tag: 3)
        
        setViewControllers([nav1, nav2, nav3], animated: true)
    }

}
