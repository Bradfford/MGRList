//
//  RegisterUserViewController.swift
//  MGRList
//
//  Created by Millfford Robert Lima Bradshaw on 31/07/23.
//

import UIKit
import SnapKit

protocol RegisterUserTypeDisplaying: AnyObject {
    func displayLoadView()
    func displayEndLoadView()
}

final class RegisterUserViewController: BaseUIViewController<RegisterUserInteracting, UIView> {
   
    private lazy var titleLabel: UILabel = {
        let title = UILabel()
        title.text = RegisterUserString.title.localized
        title.textAlignment = .center
        title.font = UIFont(name: "Avenir-medium", size: 22)
        return title
    }()
    
    lazy var descriptionLabel: UILabel = {
        let description = UILabel()
        description.text = RegisterUserString.description.localized
        description.textAlignment = .center
        description.numberOfLines = 0
        description.font = UIFont(name: "Avenir-medium", size: 16)
        return description
    }()
    
    lazy var nameTextField: UITextField = {
        let name = UITextField()
        name.placeholder = RegisterUserString.nameField.localized
        name.borderStyle = .roundedRect
        name.textAlignment = .left
        return name
    }()
    
    lazy var emailTextField: UITextField = {
        let email = UITextField()
        email.placeholder = RegisterUserString.emailField.localized
        email.borderStyle = .roundedRect
        email.textAlignment = .left
        return email
    }()
    
    lazy var phoneNumberTextField: UITextField = {
        let phoneNumber = UITextField()
        phoneNumber.placeholder = RegisterUserString.phoneNumberField.localized
        phoneNumber.borderStyle = .roundedRect
        phoneNumber.textAlignment = .left
        phoneNumber.keyboardType = .phonePad
        return phoneNumber
    }()
    
    lazy var saveButton:  UIButton = {
        let startButton = UIButton()
        startButton.setTitle(RegisterUserString.saveButton.localized, for: .normal)
        startButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        startButton.backgroundColor = .systemGreen
        startButton.layer.cornerRadius = 8
        startButton.clipsToBounds = true
        startButton.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        return startButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
    }
    
    override func buildViewHierarchy() {
        self.view.backgroundColor = .white
        view.addSubview(titleLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(nameTextField)
        view.addSubview(emailTextField)
        view.addSubview(phoneNumberTextField)
        view.addSubview(saveButton)
    }

    override func setupConstraints() {
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(100)
            $0.leading.equalToSuperview().offset(16)
            $0.trailing.equalToSuperview().inset(16)
        }

        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(16)
            make.leading.trailing.equalTo(titleLabel)
        }
        
        nameTextField.snp.makeConstraints {
            $0.top.equalTo(descriptionLabel.snp.bottom).offset(32)
            $0.leading.equalToSuperview().offset(16)
            $0.trailing.equalToSuperview().inset(16)
        }
        
        emailTextField.snp.makeConstraints {
            $0.top.equalTo(nameTextField.snp.bottom).offset(16)
            $0.leading.equalToSuperview().offset(16)
            $0.trailing.equalToSuperview().inset(16)
        }
        
        phoneNumberTextField.snp.makeConstraints {
            $0.top.equalTo(emailTextField.snp.bottom).offset(16)
            $0.leading.equalToSuperview().offset(16)
            $0.trailing.equalToSuperview().inset(16)
        }

        saveButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalToSuperview().offset(-40)
            $0.leading.equalToSuperview().offset(40)
            $0.trailing.equalToSuperview().inset(40)
            $0.height.equalTo(48)
        }
    }
    
    override func configureViews() {
        
    }
    
    @objc func tapButton(){
        interactor.loadData()
    }

}

//MARK: - RegisterUserTypeDisplaying
extension RegisterUserViewController: RegisterUserTypeDisplaying {
    func displayLoadView() {

    }

    func displayEndLoadView() {

    }

}

private extension RegisterUserViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UIGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
