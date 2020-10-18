//
//  MainTabBarController.swift
//  iChat
//
//  Created by Elena Igumenova on 29.08.2020.
//  Copyright © 2020 I_P-V. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    private let currentUser: MUser
    
    init(currentUser: MUser = MUser(username: "weqeq",
                                    email: "dfsdf",
                                    avatarStringURL: "gdgd",
                                    description: "rufd",
                                    sex: "asda",
                                    id: "akgj")) {
        self.currentUser = currentUser
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let listViewController = ListViewController(currentUser: currentUser)
        let peopleViewController = PeopleViewController(currentUser: currentUser)
        
        tabBar.tintColor = #colorLiteral(red: 0.5568627451, green: 0.3529411765, blue: 0.968627451, alpha: 1)
        
        let boldConfig = UIImage.SymbolConfiguration(weight: .medium)
        let peopleImage = UIImage(systemName: "person.2", withConfiguration: boldConfig)!
        let convImage = UIImage(systemName: "bubble.left.and.bubble.right", withConfiguration: boldConfig)!
        
        viewControllers = [
            generationNavigationController(rootViewController: peopleViewController, title: "People", image: peopleImage),
            generationNavigationController(rootViewController: listViewController, title: "Conversation", image: convImage)
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
