//
//  UIViewEx.swift
//  Guru Food
//
//  Created by Sandra on 29/05/2023.
//

import Foundation
import PureLayout
import UIKit

extension UIView {
    func xibSetup() {
        if let contentView = loadViewFromNib() {
            contentView.frame = bounds
            addSubview(contentView)
            contentView.autoPinEdgesToSuperviewEdges()
        }
    }

    fileprivate func loadViewFromNib() -> UIView! {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
}

extension UIView {
    func autoPinEdgesToEdges(of view: UIView) {
        self.autoPinEdge(.leading, to: .leading, of: view)
        self.autoPinEdge(.trailing, to: .trailing, of: view)
        self.autoPinEdge(.top, to: .top, of: view)
        self.autoPinEdge(.bottom, to: .bottom, of: view)
    }

    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        clipsToBounds = true
        layer.cornerRadius = radius
        layer.maskedCorners = CACornerMask(rawValue: corners.rawValue)
    }
}

protocol NibLoadable: class {
    static var nibName: String { get }
}

extension NibLoadable where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}
