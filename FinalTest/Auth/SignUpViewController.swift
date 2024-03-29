//
//  SignUpViewController.swift
//  FinalTest
//
//  Created by 宮崎真 on 2019/12/19.
//  Copyright © 2019 宮崎真. All rights reserved.
//

import UIKit
import PGFramework


// MARK: - Property
class SignUpViewController: BaseViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func touchedSignUpButton(_ sender: UIButton) {
        userModel.nickname = userNameTextField.text
        userModel.mail = emailTextField.text
        userModel.password = passwordTextField.text
        UserModel.create(request: userModel, success: {
            let vc = HomeViewController()
            self.navigationController?.pushViewController(vc, animated: true)
            self.animatorManager.navigationType = .push
        }) { (error) in
            print(error)
        }
    }
    @IBAction func touchedSignInButton(_ sender: UIButton) {
        let vc = SignInViewController()
        navigationController?.pushViewController(vc, animated: true)
        animatorManager.navigationType = .slide_push
    }
    var userModel: UserModel = UserModel()
}

// MARK: - Life cycle
extension SignUpViewController {
    override func loadView() {
        super.loadView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

// MARK: - Protocol
extension SignUpViewController {
    
}

// MARK: - method
extension SignUpViewController {
    
}
