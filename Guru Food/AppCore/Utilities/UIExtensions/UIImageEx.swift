//
//  UIImageEx.swift
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
        // Create an array of CGColors from the provided UIColors
        let cgColors = colors.map { $0.cgColor }
        // Set the gradient layer's colors
        gradientLayer.colors = cgColors
        // Set the gradient layer's start and end points
        gradientLayer.startPoint = startPoint
        gradientLayer.endPoint = endPoint
        // Ensure that the gradient layer is behind the image view's content
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
