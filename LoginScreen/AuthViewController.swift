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
        super.viewDidLoad()
        setupView()
    }
}

// MARK: - Setting view
private extension AuthViewController {
    func setupView() {
        view.backgroundColor = #colorLiteral(red: 0.8600829244, green: 0.2624471188, blue: 0.3114928305, alpha: 0.9179946192)
        addSubViews()
        
        setupLogoImage()
        setupEmailContainer()
        setupLogInContainer()
        
        setupLayout()
    }
}

// MARK: - Setting
private extension AuthViewController {
    func addSubViews() {
        [logoImage, emailContainer, logInContainer].forEach {
            view.addSubview($0)
        }
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
        [logoImage,
         loginLabel,
         loginButton,
         emailLabel,
         emailButton,
         emailContainer,
         logInContainer].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
                logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                logoImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.66),
                logoImage.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25),
                
                emailContainer.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 10),
                emailContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
                emailContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
                emailContainer.heightAnchor.constraint(equalToConstant: 150),
                
                emailButton.heightAnchor.constraint(equalToConstant: 70),
                
                logInContainer.topAnchor.constraint(equalTo: emailContainer.bottomAnchor, constant: 50),
                logInContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
                logInContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
                logInContainer.heightAnchor.constraint(equalToConstant: 150),
                
                loginButton.heightAnchor.constraint(equalToConstant: 70),
                
            ])
        }
    }
}
