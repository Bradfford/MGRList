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
    
    lazy var onboardingText: UILabel = {
        let onboardingText = UILabel()
        onboardingText.text = "teste teste te e testesteste teste"
        onboardingText.textAlignment = .center
        onboardingText.font = UIFont(name: "Avenir-medium", size: 12)
        return onboardingText
    }()
    
    lazy var startButton:  UIButton = {
        let startButton = UIButton()
        startButton.setTitle("Começar", for: .normal)
        startButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        startButton.backgroundColor = .systemGreen
        startButton.layer.cornerRadius = 20
        startButton.clipsToBounds = true
        startButton.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        return startButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func buildViewHierarchy() {
        self.view.backgroundColor = UIColor(named: "orange-color")
        view.addSubview(imageView)
        view.addSubview(onboardingText)
        view.addSubview(startButton)
    }
    
    override func setupConstraints() {
        imageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(100)
            make.height.width.equalTo(200)
        }

        onboardingText.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(imageView.snp.bottom).offset(32)
            make.leading.trailing.equalTo(imageView)
        }

        startButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-40)
            make.width.equalTo(120)
            make.height.equalTo(40)
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

