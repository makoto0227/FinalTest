//
//  SettingViewController.swift
//  FinalTest
//
//  Created by 宮崎真 on 2019/12/12.
//  Copyright © 2019 宮崎真. All rights reserved.
//

import UIKit
import PGFramework


// MARK: - Property
class SettingViewController: BaseViewController {
    
    @IBAction func touchedCancelButton(_ sender: UIButton) {
        dismiss(animated: true) {}
    }
    @IBAction func touchedDoneButton(_ sender: UIButton) {
        dismiss(animated: true) {}
    }
    @IBOutlet weak var userIcon: UIImageView!
    @IBAction func touchedEditImageButton(_ sender: UIButton) {
    }
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func touchedLogoutButton(_ sender: UIButton) {
        UserModel.logOut {
            transitionStoryboard(name: "Main")
        }
    }
    @IBAction func touchedDeleteButton(_ sender: UIButton) {
    }
    var myself: UserModel = UserModel()
}

// MARK: - Life cycle
extension SettingViewController {
    override func loadView() {
        super.loadView()
        setIcon()
        setTextField()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

// MARK: - Protocol
extension SettingViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField.tag {
        case 0:
            myself.nickname = textField.text
        case 1:
            myself.description = textField.text
        case 2:
            myself.mail = textField.text
        case 3:
            myself.password = textField.text
        default:
            break
        }
        return true
    }
}

// MARK: - method
extension SettingViewController {
    func setIcon(){
        userIcon.layer.cornerRadius = 50
        userIcon.layer.masksToBounds = true
    }
    func setTextField(){
        nameTextField.delegate = self
        descriptionTextField.delegate = self
        emailTextField.delegate = self
        passwordTextField.delegate = self
        nameTextField.text = myself.nickname
        descriptionTextField.text = myself.description
        emailTextField.text = myself.mail
        passwordTextField.text = myself.password
    }
}
