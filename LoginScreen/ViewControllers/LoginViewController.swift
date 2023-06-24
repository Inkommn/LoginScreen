//
//  LoginViewController.swift
//  LoginScreen
//
//  Created by Shamkhan Mutuskhanov on 21.06.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    // MARK: - Private properties
    private let bgView = UIView()
    
    private let welcomeImage = UIImageView()
    
    private let emailLabel = CustomLabel(title: "Email")
    private let passwordLabel = CustomLabel(title: "Password")
    private let questionLabel = CustomLabel(title: "Need an account?")
    
    private let emailTextField = RegisterTextField(placeholder: "  Enter your email")
    private let passwordTextField = RegisterTextField(placeholder: "  Enter your password", isPrivate: true)
    
    private let loginButton = CustomButton(
        title: "Login",
        backgroundColor: .white,
        isShadow: true,
        titleColor: .black
    )
    
    private let linkButton = UIButton()
    private let eyeButton = UIButton()
    
    private let emailContainer = UIStackView()
    private let passwordContainer = UIStackView()
    private let signUpContainer = UIStackView()
    
    private var isPrivate = true
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
}

// MARK: - Setting view
private extension LoginViewController {
    func setupView() {
        view.backgroundColor = .white
        addSubViews()
        
        setupBgView()
        setupLogoImage()
        setupLinkButton()
        
        setupContainer(
            stackView: emailContainer,
            topLabel: emailLabel,
            bottomTF: emailTextField
        )
        
        setupContainer(
            stackView: passwordContainer,
            topLabel: passwordLabel,
            bottomTF: passwordTextField
        )
        
        setupSignUpContainer()
        
        setupLayout()
        
    }
}

// MARK: - Setting
private extension LoginViewController {
    func addSubViews() {
        [welcomeImage,
         bgView,
         emailContainer,
         passwordContainer,
         signUpContainer,
         linkButton,
         loginButton].forEach {
            view.addSubview($0)
        }
    }
    
    func setupBgView() {
        bgView.backgroundColor = .mainBackground
    }
    
    func setupLogoImage() {
        welcomeImage.image = UIImage(named: "logo 2")
        welcomeImage.contentMode = .scaleAspectFit
    }
    
    func setupLinkButton() {
        linkButton.setTitle("Sign Up", for: .normal)
        linkButton.setTitleColor(.systemPink, for: .normal)
        linkButton.setTitleColor(.highlightedColor, for: .highlighted)
        linkButton.titleLabel?.font = .boldSystemFont(ofSize: 18)
    }
    
    func setupContainer(stackView: UIStackView, topLabel: UILabel, bottomTF: UITextField) {
        stackView.axis = .vertical
        
        stackView.addArrangedSubview(topLabel)
        stackView.addArrangedSubview(bottomTF)
    }
    
    func setupSignUpContainer() {
        signUpContainer.axis = .horizontal
        
        signUpContainer.addArrangedSubview(questionLabel)
        signUpContainer.addArrangedSubview(linkButton)
    }
}

// MARK: - Layout
private extension LoginViewController {
    func setupLayout() {
        [bgView,
         welcomeImage,
         emailLabel,
         emailTextField,
         emailContainer,
         passwordLabel,
         passwordTextField,
         passwordContainer,
         loginButton,
         questionLabel,
         linkButton,
         signUpContainer].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                welcomeImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
                welcomeImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                welcomeImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.25),
                welcomeImage.heightAnchor.constraint(equalTo: welcomeImage.widthAnchor),
                
                bgView.topAnchor.constraint(equalTo: welcomeImage.bottomAnchor, constant: 10),
                bgView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
                bgView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
                bgView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
                
                emailContainer.topAnchor.constraint(equalTo: bgView.topAnchor, constant: 50),
                emailContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                emailContainer.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
                
                passwordContainer.topAnchor.constraint(equalTo: emailContainer.bottomAnchor, constant: 50),
                passwordContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                passwordContainer.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
                
                loginButton.topAnchor.constraint(equalTo: passwordContainer.bottomAnchor, constant: 30),
                loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                loginButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
                
                signUpContainer.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
                signUpContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                signUpContainer.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8)
            ])
        }
    }
}
