//
//  CustomLabel.swift
//  LoginScreen
//
//  Created by Shamkhan Mutuskhanov on 21.06.2023.
//

import UIKit

// MARK: - CustomLabel
final class CustomLabel: UILabel {
    
    init(title: String) {
        super.init(frame: .zero)
        setupSelfLabel(title: title)
        
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private methods
    private func setupSelfLabel(title: String) {
        text = title
        font = .boldSystemFont(ofSize: 18)
        textColor = .white
    }
}
