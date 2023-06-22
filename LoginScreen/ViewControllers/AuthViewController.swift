//
//  ViewController.swift
//  LoginScreen
//
//  Created by Shamkhan Mutuskhanov on 21.06.2023.
//

import UIKit

// MARK: - AuthViewController
final class AuthViewController: UIViewController {
    
    // MARK: - Private properties
    private let logoImage = UIImageView()
    
    private let emailLabel = CustomLabel(title: "Register as a new user")
    private let loginLabel = CustomLabel(title: "Login with your account")
    
    private let emailButton = CustomButton(
        title: "Email",
        backgroundColor: .systemCyan,
        isShadow: false
    )
    private let loginButton = CustomButton(
        title: "Login",
        backgroundColor: .white,
        isShadow: true,
        titleColor: .black
    )
    
    private let emailContainer = UIStackView()
    private let logInContainer = UIStackView()
    
    // MARK: - Override methods
    override func viewDidLoad() {
        setupView()
    }
    
    // MARK: - Actions
    @objc
    private func showLoginViewController() {
        let loginVC = LoginViewController()
        present(loginVC, animated: true)
    }
    
    @objc
    private func showEmailViewController() {
        let emailVC = EmailViewController()
        present(emailVC, animated: true)
    }
}

// MARK: - Setting view
private extension AuthViewController {
    func setupView() {
        view.backgroundColor = .mainBackground
        addSubviews(logoImage, emailContainer, logInContainer)
        disableAutoresizingMask(logoImage, emailContainer, logInContainer)
        
        setupLogoImage()
        setupEmailContainer()
        setupLogInContainer()
        addActions()
        
        setupLayout()
    }
}

// MARK: - Setting
private extension AuthViewController {
    
    func addActions() {
        loginButton.addTarget(
            self,
            action: #selector(showLoginViewController),
            for: .touchUpInside
        )
        
        emailButton.addTarget(
            self,
            action: #selector(showEmailViewController),
            for: .touchUpInside
        )
    }
    
    func setupLogoImage() {
        logoImage.image = UIImage(named: "logo")
        logoImage.contentMode = .scaleAspectFit
    }
    
    func setupEmailContainer() {
        emailContainer.axis = .vertical
        
        emailContainer.addArrangedSubview(emailLabel)
        emailContainer.addArrangedSubview(emailButton)
    }
    
    func setupLogInContainer() {
        logInContainer.axis = .vertical
        
        logInContainer.addArrangedSubview(loginLabel)
        logInContainer.addArrangedSubview(loginButton)
    }
}

    // MARK: - Layout
private extension AuthViewController {
    func setupLayout() {
        
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.66),
            logoImage.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.33),
            
            emailContainer.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 10),
            emailContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            emailContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            emailContainer.heightAnchor.constraint(equalToConstant: 150),
            
            logInContainer.topAnchor.constraint(equalTo: emailContainer.bottomAnchor, constant: 50),
            logInContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            logInContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            logInContainer.heightAnchor.constraint(equalToConstant: 150)
        ])
    }
}
