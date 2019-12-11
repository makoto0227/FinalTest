//
//  HomeViewController.swift
//  FinalTest
//
//  Created by 宮崎真 on 2019/12/05.
//  Copyright © 2019 宮崎真. All rights reserved.
//

import UIKit

import PGFramework


// MARK: - Property
class HomeViewController: BaseViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBAction func postButton(_ sender: UIButton) {
    }
    
}

// MARK: - Life cycle
extension HomeViewController {
    override func loadView() {
        super.loadView()
        tableView.dataSource = self
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
extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: HomeTableViewCell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as? HomeTableViewCell else{return UITableViewCell()}
        return cell
    }
    
    
}

// MARK: - method
extension HomeViewController {
    
}
