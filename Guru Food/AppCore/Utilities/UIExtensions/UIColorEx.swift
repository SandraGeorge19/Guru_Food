//
//  UIColorEx.swift
//  Guru Food
//
//  Created by Sandra on 29/05/2023.
//

import Foundation
import UIKit

extension UIColor {
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        var cleanedHex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        if cleanedHex.hasPrefix("#") {
            cleanedHex = String(cleanedHex.dropFirst())
        }
        let hexValue = Int(cleanedHex, radix: 16) ?? 0
        let red = CGFloat((hexValue >> 16) & 0xFF) / 255.0
        let green = CGFloat((hexValue >> 8) & 0xFF) / 255.0
        let blue = CGFloat(hexValue & 0xFF) / 255.0
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    class func primaryColor() {
        
    }
    
    class func whiteColor() -> UIColor {
        return UIColor.white
    }
}
