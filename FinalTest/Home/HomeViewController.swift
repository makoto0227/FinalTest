//
//  HomeViewController.swift
//  FinalTest
//
//  Created by 宮崎真 on 2019/12/05.
//  Copyright © 2019 宮崎真. All rights reserved.
//

import UIKit
import PGFramework
import FirebaseAuth


// MARK: - Property
class HomeViewController: BaseViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBAction func postButton(_ sender: UIButton) {
        let vc = PostViewController()
        navigationController?.pushViewController(vc, animated: true)
        animatorManager.navigationType = .slide_push
    }
    
}

// MARK: - Life cycle
extension HomeViewController {
    override func loadView() {
        super.loadView()
        if Auth.auth().currentUser?.email == nil {
            let vc = SignUpViewController()
            navigationController?.pushViewController(vc, animated: false)
        }
        tableView.dataSource = self
        tableView.delegate = self
        loadTableViewCellFromXib(tableView: tableView, cellName: "HomeTableViewCell")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

// MARK: - Protocol
extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: HomeTableViewCell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as? HomeTableViewCell else{return UITableViewCell()}
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = PostDetailsViewController()
        navigationController?.pushViewController(vc, animated: true)
        animatorManager.navigationType = .slide_push
    }
    
}

// MARK: - method
extension HomeViewController {
    
}
