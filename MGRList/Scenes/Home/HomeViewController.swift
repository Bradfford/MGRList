//
//  HomeViewController.swift
//  MGRList
//
//  Created by Millfford Robert Lima Bradshaw on 05/08/23.
//

import UIKit
import SnapKit

protocol HomeTypeDispaying: AnyObject {
    func displayLoadView()
    func displayEndLoadView()
}

final class HomeViewController: BaseUIViewController<HomeInteracting, UIView> {
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Check-list-Icon")
        imageView.layer.cornerRadius = 20
        imageView.clipsToBounds = true
        return imageView
    }()
    
    lazy var onboardingText: UILabel = {
        let onboardingText = UILabel()
        onboardingText.text = "teste tela Home"
        onboardingText.textAlignment = .center
        onboardingText.font = UIFont(name: "Avenir-medium", size: 12)
        return onboardingText
    }()
    
    lazy var startButton:  UIButton = {
        let startButton = UIButton()
        startButton.setTitle("Teste botão home", for: .normal)
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
        self.view.backgroundColor = UIColor(named: "green-color")
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

extension HomeViewController: HomeTypeDispaying{
    func displayLoadView() {
    }
    
    func displayEndLoadView() {
    }
    
    
}
