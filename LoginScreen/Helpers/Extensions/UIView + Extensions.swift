//
//  UIView + Extensions.swift
//  LoginScreen
//
//  Created by Shamkhan Mutuskhanov on 22.06.2023.
//

import UIKit

extension UIViewController {
    /// Метод позволяет добавлять вьюхи на экран в одном скоупе, через запятую.
    func addSubviews(_ views: UIView...) {
        views.forEach { view.addSubview($0) }
    }
    
    /// Метод отключает маски у всех вьюх.
    func disableAutoresizingMask(_ views: UIView...) {
        views.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
    }
}
