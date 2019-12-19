//
//  PostViewController.swift
//  FinalTest
//
//  Created by 宮崎真 on 2019/12/12.
//  Copyright © 2019 宮崎真. All rights reserved.
//

import UIKit
import PGFramework


// MARK: - Property
class PostViewController: BaseViewController {
    @IBAction func touchedCancelButton(_ sender: UIButton) {
        let vc = HomeViewController()
        navigationController?.pushViewController(vc, animated: true)
        animatorManager.navigationType = .slide_pop
    }
    @IBAction func touchedShareButton(_ sender: UIButton) {
    }
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var postDescription: UITextField!
    
}

// MARK: - Life cycle
extension PostViewController {
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
extension PostViewController {
    
}

// MARK: - method
extension PostViewController {
    
}
