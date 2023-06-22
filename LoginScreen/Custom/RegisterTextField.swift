//
//  CustomTextField.swift
//  LoginScreen
//
//  Created by Shamkhan Mutuskhanov on 21.06.2023.
//

import UIKit

// MARK: - RegisterTextField
final class RegisterTextField: UITextField {
    
    // MARK: - Initializer
    init(placeholder: String, isPrivate: Bool = false) {
        super.init(frame: .zero)
        setupTextField(placeholder: placeholder, isPrivate: isPrivate)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private methods
    private func setupTextField(placeholder: String, isPrivate: Bool) {
        textColor = .white
        
        layer.cornerRadius = 10
        layer.borderWidth = 1.5
        layer.borderColor = UIColor.white.cgColor
        layer.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        
        attributedPlaceholder = NSAttributedString(
            string: placeholder,
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.systemCyan]
        )
        font = .boldSystemFont(ofSize: 18)
        heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        if isPrivate {
            isSecureTextEntry = true
        }
    }
}
