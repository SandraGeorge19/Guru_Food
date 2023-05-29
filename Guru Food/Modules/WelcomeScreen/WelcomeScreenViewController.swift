//
//  WelcomeScreenViewController.swift
//  Guru Food
//
//  Created by Sandra on 14/05/2023.
//

import UIKit

class WelcomeScreenViewController: UIViewController {
    // MARK: - Outlet(s)
    @IBOutlet private weak var welcomeView: WelcomeView!
    // MARK: - LifeCycle(s)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
        goToHomeAfterThreeSec()
    }

    // MARK: - Function(s)
    func setupUI() {
        let welcomeModel = WelcomeModel(title: "Food Recipies", subTitle: "Easy to make food")
        welcomeView.setupUI(with: welcomeModel)
    }
    @objc
    private func navigateToHome() {
        let storyBoard = UIStoryboard(name: "Home", bundle: nil)
        guard let homeVC = storyBoard.instantiateViewController(withIdentifier: String(describing: HomeViewController.self)) as? HomeViewController else { return }
        homeVC.modalPresentationStyle = .fullScreen
        self.present(homeVC, animated: false, completion: nil)
    }
    func goToHomeAfterThreeSec() {
        let timer = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(navigateToHome), userInfo: nil, repeats: false)
        // Add the timer to the main run loop to ensure it fires
        RunLoop.main.add(timer, forMode: .common)
    }
}
