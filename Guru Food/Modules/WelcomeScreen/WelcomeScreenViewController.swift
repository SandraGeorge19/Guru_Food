//
//  WelcomeScreenViewController.swift
//  Guru Food
//
//  Created by Sandra on 14/05/2023.
//

import UIKit

class WelcomeScreenViewController: UIViewController {
    // MARK: - Outlet(s)
    @IBOutlet weak var welcomeView: WelcomeView!
    // MARK: - LifeCycle(s)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let welcomeModel = WelcomeModel(title: "Food Recipies", subTitle: "Easy to make food")
        welcomeView.setupUI(with: welcomeModel)
    }

    // MARK: - Function(s)
}

