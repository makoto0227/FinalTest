//
//  SignInViewController.swift
//  FinalTest
//
//  Created by 宮崎真 on 2019/12/19.
//  Copyright © 2019 宮崎真. All rights reserved.
//

import UIKit
import PGFramework


// MARK: - Property
class SignInViewController: BaseViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func touchedSignInButton(_ sender: UIButton) {
        UserModel.signIn(email: emailTextField.text ?? "", pass: passwordTextField.text ?? "", failure: { (error) in
            
        }) {
            let vc = HomeViewController()
            self.navigationController?.pushViewController(vc, animated: true)
            self.animatorManager.navigationType = .push
        }
    }
    @IBAction func touchedSignUpButton(_ sender: UIButton) {
        let vc = SignUpViewController()
        navigationController?.pushViewController(vc, animated: true)
        animatorManager.navigationType = .slide_pop
    }
    
}

// MARK: - Life cycle
extension SignInViewController {
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
extension SignInViewController {
    
}

// MARK: - method
extension SignInViewController {
    
}
