//
//  ViewController.swift
//  iChat
//
//  Created by Elena Igumenova on 16.08.2020.
//  Copyright © 2020 I_P-V. All rights reserved.
//

import UIKit

class AuthViewController: UIViewController {
    
//    var button: UIButton = {
//        let button = UIButton()
//        return button
//    }()
    
    let logoImageView = UIImageView(image: #imageLiteral(resourceName: "Logo"), contentMode: .scaleAspectFit)
    
    let googleLabel = UILabel(text: "Get started with")
    let emailLabel = UILabel(text: "Or sign up with")
    let alredyOnboardLabel = UILabel(text: "Alredy onboard?")
    
    let googleButton = UIButton(title: "Google",
                                titleColor: .black,
                                backgroundColor: .white,
                                font: .avenir20(),
                                isShadow: true,
                                cornerRadius: 5)
    
    let emailButton = UIButton(title: "Email",
                            titleColor: .white,
                            backgroundColor: .buttonDark(),
                            font: .avenir20(),
                            isShadow: false,
                            cornerRadius: 5)
    
    let loginButton = UIButton(title: "Login",
                               titleColor: .buttonRed(),
                               backgroundColor: .white,
                               font: .avenir20(),
                               isShadow: true,
                               cornerRadius: 5)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        googleButton.customizeGoogleButton()

        view.backgroundColor = .white
        setupConstraints()
    }
    
}

// MARK: Setup constraints
extension AuthViewController {
    
    private func setupConstraints() {
        
        let googleView = ButtonFormView(label: googleLabel, button: googleButton)
        let emailView = ButtonFormView(label: emailLabel, button: emailButton)
        let loginView = ButtonFormView(label: alredyOnboardLabel, button: loginButton)
        
        
        let stackView = UIStackView(arrangedSubviews: [googleView, emailView, loginView],
                                    axis: .vertical,
                                    spacing: 40)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false

        
        view.addSubview(logoImageView)
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 160),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])

    }
}


// MARK: SwiftUI
import SwiftUI

struct AuthVCProvider: PreviewProvider {
    static var previews: some View {
        ContainerView()
            .edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let viewController = AuthViewController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<AuthVCProvider.ContainerView>) -> AuthViewController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: AuthVCProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<AuthVCProvider.ContainerView>) {
            
        }
    }
}

