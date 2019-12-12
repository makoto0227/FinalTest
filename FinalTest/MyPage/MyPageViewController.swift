//
//  MyPageViewController.swift
//  FinalTest
//
//  Created by 宮崎真 on 2019/12/12.
//  Copyright © 2019 宮崎真. All rights reserved.
//

import UIKit
import PGFramework


// MARK: - Property
class MyPageViewController: BaseViewController {
    @IBOutlet weak var userIcon: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBAction func touchedSettingButton(_ sender: UIButton) {
        let vc = SettingViewController()
        present(vc, animated: true) {}
    }
    
    
}

// MARK: - Life cycle
extension MyPageViewController {
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
extension MyPageViewController {
    
}

// MARK: - method
extension MyPageViewController {
    
}
