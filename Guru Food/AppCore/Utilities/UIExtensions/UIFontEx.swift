//
//  UIFontEx.swift
//  Guru Food
//
//  Created by Sandra on 29/05/2023.
//

import Foundation
import UIKit
extension UIFont {
    static func poppinsRegular(size: CGFloat) -> UIFont {
        return UIFont(name: "Poppins-Regular", size: size)!
    }
    static func poppinsBold(size: CGFloat) -> UIFont {
        return UIFont(name: "Poppins-Bold", size: size)!
    }
    static func poppinsSemiBold(size: CGFloat) -> UIFont {
        return UIFont(name: "Poppins-SemiBold", size: size)!
    }
    static func poppinsLight(size: CGFloat) -> UIFont {
        return UIFont(name: "Poppins-Light", size: size)!
    }
}
