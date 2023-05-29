//
//  WelcomeView.swift
//  Guru Food
//
//  Created by Sandra on 28/05/2023.
//

import UIKit

class WelcomeView: UIView, NibLoadable {
    // MARK: - IBOutlets
    @IBOutlet private weak var backgroundImg: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var subTitleLabel: UILabel!
    // MARK: - Properties
    
    // MARK: - LifeCycle Method(s)
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        xibSetup()
    }
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    // MARK: - Function(s)
    func setupUI( with model: WelcomeModel) {
        setupGradientFor(backgroundImg: self.backgroundImg)
        setupUIForLabels(from: model)
    }
    private func setupGradientFor( backgroundImg img: UIImageView) {
        let gradientColors = [UIColor.clear, UIColor.gray]
        let startPoint = CGPoint(x: 1.0, y: 0.0)
        let endPoint = CGPoint(x: 0.0, y: 1.0)
        // Apply the gradient to the image view
        img.applyGradient(colors: gradientColors, startPoint: startPoint, endPoint: endPoint)
    }
    private func setupUIForLabels( from model: WelcomeModel) {
        self.titleLabel.text = model.title
        self.titleLabel.font = .poppinsBold(size: 64)
        self.titleLabel.textColor = .whiteColor()
        self.subTitleLabel.text = model.subTitle
        subTitleLabel.font = .poppinsRegular(size: 24)
        self.subTitleLabel.textColor = .whiteColor()
    }
}

// MARK: - Extension(s)
