//
//  UIImageViewEx.swift
//  Guru Food
//
//  Created by Sandra on 28/05/2023.
//

import Foundation
import UIKit

extension UIImageView {
    func applyGradient(colors: [UIColor], startPoint: CGPoint, endPoint: CGPoint) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        // Set the gradient layer's colors
        gradientLayer.colors = colors
        gradientLayer.locations = [0.0, 1.0]
        // Set the gradient layer's start and end points
        gradientLayer.startPoint = startPoint
        gradientLayer.endPoint = endPoint
        // Ensure that the gradient layer is behind the image view's content
        // Clip gradients to background bounds
        clipsToBounds = true
        // Set transparency level
        alpha = 0.92
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
