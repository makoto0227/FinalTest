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
    
}

// MARK: - Life cycle
extension SettingViewController {
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
extension SettingViewController {
    
}

// MARK: - method
extension SettingViewController {
    
}
