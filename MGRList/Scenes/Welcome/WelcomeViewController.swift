//
//  WelcomeViewController.swift
//  MGRList
//
//  Created by Millfford Robert Lima Bradshaw on 18/07/23.
//

import UIKit
import SnapKit


protocol WelcomeTypeDisplaying: AnyObject {
    func displayLoadView()
    func displayEndLoadView()
}

final class WelcomeViewController: BaseUIViewController<WelcomeInteracting, UIView> {
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Check-list-Icon")
        imageView.layer.cornerRadius = 20
        imageView.clipsToBounds = true
        return imageView
    }()
    
    lazy var onboardingTitle: UILabel = {
        let onboardingTitle = UILabel()
        onboardingTitle.text = WelcomeString.welcomeTitle.localized
        onboardingTitle.textAlignment = .center
        onboardingTitle.numberOfLines = 0
        onboardingTitle.font = UIFont(name: "Avenir-medium", size: 26)
        return onboardingTitle
    }()
    
    lazy var onboardingText: UILabel = {
        let onboardingText = UILabel()
        onboardingText.text = WelcomeString.welcomeText.localized
        onboardingText.textAlignment = .center
        onboardingText.numberOfLines = 0
        onboardingText.font = UIFont(name: "Avenir-medium", size: 18)
        return onboardingText
    }()
    
    lazy var continueButton:  UIButton = {
        let continueButton = UIButton()
        continueButton.setTitle(WelcomeString.welcomeButton.localized, for: .normal)
        continueButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        continueButton.backgroundColor = .systemGreen
        continueButton.layer.cornerRadius = 8
        continueButton.clipsToBounds = true
        continueButton.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        return continueButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func buildViewHierarchy() {
        self.view.backgroundColor = UIColor(named: "orange-color")
        view.addSubview(imageView)
        view.addSubview(onboardingTitle)
        view.addSubview(onboardingText)
        view.addSubview(continueButton)
    }
    
    override func setupConstraints() {
        imageView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().offset(100)
            $0.height.width.equalTo(100)
        }
        
        onboardingTitle.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(imageView.snp.bottom).offset(32)
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().inset(20)
        }

        onboardingText.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(onboardingTitle.snp.bottom).offset(16)
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().inset(20)
        }

        continueButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalToSuperview().offset(-40)
            $0.leading.equalToSuperview().offset(40)
            $0.trailing.equalToSuperview().inset(40)
            $0.height.equalTo(48)
        }
    }
    
    @objc func tapButton(){
        interactor.loadData()
    }

}

extension WelcomeViewController: WelcomeTypeDisplaying {
    func displayLoadView() {
        
    }
    
    func displayEndLoadView() {
        
    }
    
    
}

