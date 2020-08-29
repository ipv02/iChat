//
//  MainTabBarController.swift
//  iChat
//
//  Created by Elena Igumenova on 29.08.2020.
//  Copyright © 2020 I_P-V. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let listViewController = ListViewController()
        let peopleViewController = PeopleViewController()
        
        tabBar.tintColor = #colorLiteral(red: 0.5568627451, green: 0.3529411765, blue: 0.968627451, alpha: 1)
        
        let boldConfig = UIImage.SymbolConfiguration(weight: .medium)
        let peopleImage = UIImage(systemName: "person.2", withConfiguration: boldConfig)!
        let convImage = UIImage(systemName: "bubble.left.and.bubble.right", withConfiguration: boldConfig)!
        
        viewControllers = [
            generationNavigationController(rootViewController: listViewController, title: "Conversation", image: convImage),
            generationNavigationController(rootViewController: peopleViewController, title: "People", image: peopleImage)
        ]
    }
    
    private func generationNavigationController(rootViewController: UIViewController,
                                                title: String,
                                                image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
}
