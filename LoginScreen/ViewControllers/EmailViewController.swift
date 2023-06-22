//
//  EmailViewController.swift
//  LoginScreen
//
//  Created by Shamkhan Mutuskhanov on 22.06.2023.
//

import UIKit

final class EmailViewController: UIViewController {
    
    // MARK: - Private properties
    private let bgView = UIView()
    private let logoImage = UIImageView()
    
    private let firstNameTF = RegisterTextField(placeholder: "FirstName")
    private let lastNameTF = RegisterTextField(placeholder: "LastName")
    
    private let firstNameLabel = CustomLabel(title: "First Name")
    private let lastNameLabel = CustomLabel(title: "Last Name")
    
    private let emailLabel = CustomLabel(title: "Email")
    private let passwordLabel = CustomLabel(title: "Password")
    
    private let emailTextField = RegisterTextField(placeholder: "Enter your email")
    private let passwordTextField = RegisterTextField(placeholder: "Enter your password")
    
    private let registerButton = CustomButton(
        title: "Register",
        backgroundColor: .systemCyan,
        isShadow: true)
    
    private let registeredLabel = CustomLabel(title: "Already registered?")
    private let linkButton = UIButton()
    
    private let firstNameContainer = UIStackView()
    private let lastNameContainer = UIStackView()
    
    private let emailContainer = UIStackView()
    private let passwordContainer = UIStackView()
    
    
    private let logInContainer = UIStackView()
    
    // MARK: - Override mathods
    override func viewDidLoad() {
        setupView()
    }
    
}
// MARK: - Setting view
private extension EmailViewController {
    func setupView() {
        view.backgroundColor = .white
        addSubviews(
            bgView,
            logoImage,
            firstNameContainer,
            lastNameContainer,
            emailContainer,
            passwordContainer,
            logInContainer
        )
        
        disableAutoresizingMask(
            firstNameContainer,
            lastNameContainer,
            emailContainer,
            passwordContainer,
            logInContainer,
            registerButton,
            bgView,
            logoImage
        )
        
        setupBgView()
        setupLogoImage()
        setupLinkButton()
        
        setupFirstNameContainer()
        setupLogInContainer()
        setupLastNameContainer()
        
        
        setupLayout()
    }
}

// MARK: - Setting
private extension EmailViewController {
    func setupFirstNameContainer() {
        firstNameContainer.axis = .vertical
        firstNameContainer.distribution = .fillEqually
        firstNameContainer.spacing = 40
        
        firstNameContainer.addArrangedSubview(firstNameLabel)
        firstNameContainer.addArrangedSubview(firstNameTF)
    }
    
    func setupLastNameContainer() {
        lastNameContainer.axis = .vertical
        lastNameContainer.spacing = 50
        
        lastNameContainer.addArrangedSubview(lastNameLabel)
        lastNameContainer.addArrangedSubview(lastNameTF)
    }
    
    func setupEmailNameContainer() {
        emailContainer.axis = .vertical
        emailContainer.spacing = 50
        
        emailContainer.addArrangedSubview(emailLabel)
        emailContainer.addArrangedSubview(emailTextField)
    }
    
    func setupPasswordContainer() {
        passwordContainer.axis = .vertical
        passwordContainer.spacing = 50
        
        passwordContainer.addArrangedSubview(passwordLabel)
        passwordContainer.addArrangedSubview(passwordTextField)
    }
    
    
    func setupLogInContainer() {
        logInContainer.axis = .horizontal
        logInContainer.distribution = .fill
        
        logInContainer.addArrangedSubview(registeredLabel)
        logInContainer.addArrangedSubview(linkButton)
    }
    
    func setupBgView() {
        bgView.backgroundColor = .mainBackground
    }
    
    func setupLogoImage() {
        logoImage.image = UIImage(named: "logo 2")
        logoImage.contentMode = .scaleAspectFit
    }
    
    func setupLinkButton() {
        linkButton.setTitle("Login", for: .normal)
        linkButton.setTitleColor(.systemPink, for: .normal)
        linkButton.setTitleColor(.highlightedColor, for: .highlighted)
        linkButton.titleLabel?.font = .boldSystemFont(ofSize: 18)
    }
}

// MARK: - Layout
private extension EmailViewController {
    func setupLayout() {
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.25),
            logoImage.heightAnchor.constraint(equalTo: logoImage.widthAnchor),
            
            bgView.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 10),
            bgView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            bgView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            bgView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            firstNameContainer.topAnchor.constraint(equalTo: bgView.topAnchor, constant: 50),
            firstNameContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            firstNameContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            lastNameContainer.topAnchor.constraint(equalTo: firstNameContainer.bottomAnchor, constant: 50),
            lastNameContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            lastNameContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            logInContainer.bottomAnchor.constraint(equalTo: lastNameContainer.bottomAnchor, constant: 70),
            logInContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logInContainer.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8)
        ])
    }
}
