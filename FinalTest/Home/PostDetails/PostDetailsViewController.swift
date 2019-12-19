//
//  PostDetailsViewController.swift
//  FinalTest
//
//  Created by 宮崎真 on 2019/12/12.
//  Copyright © 2019 宮崎真. All rights reserved.
//

import UIKit
import PGFramework


// MARK: - Property
class PostDetailsViewController: BaseViewController {
    @IBAction func touchedReturnButton(_ sender: UIButton) {
        let vc = HomeViewController()
        navigationController?.pushViewController(vc, animated: true)
        animatorManager.navigationType = .slide_pop
    }
    @IBOutlet weak var userIcon: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
}

// MARK: - Life cycle
extension PostDetailsViewController {
    override func loadView() {
        super.loadView()
        setIcon()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

// MARK: - Protocol
extension PostDetailsViewController {
    
}

// MARK: - method
extension PostDetailsViewController {
    func setIcon(){
        userIcon.layer.cornerRadius = 25
        userIcon.layer.masksToBounds = true
    }
}
