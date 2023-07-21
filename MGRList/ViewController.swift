//
//  ViewController.swift
//  MGRList
//
//  Created by Millfford Robert Lima Bradshaw on 18/07/23.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    lazy var imageView = UIImageView(frame: .zero)
    lazy var onboardingText = UILabel(frame: .zero)
    lazy var startButton = UIButton(frame: .zero)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }
    
    func setupViews(){
        self.view.backgroundColor = UIColor(named: "orange-color")
        
        imageView.image = UIImage(named: "Check-list-Icon")
        imageView.layer.cornerRadius = 20
        imageView.clipsToBounds = true
        self.view.addSubview(imageView)
        
        onboardingText.text = "teste teste te e testesteste teste"
        onboardingText.textAlignment = .center
        onboardingText.font = UIFont(name: "Avenir-medium", size: 12)
        self.view.addSubview(onboardingText)
        
        startButton.setTitle("Começar", for: .normal)
        startButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        startButton.backgroundColor = .systemGreen
        startButton.layer.cornerRadius = 20
        startButton.clipsToBounds = true
        self.view.addSubview(startButton)
        
    }
    
    func setupConstraints(){
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

}

