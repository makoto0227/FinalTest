//
//  HomeTableViewCell.swift
//  FinalTest
//
//  Created by 宮崎真 on 2019/12/05.
//  Copyright © 2019 宮崎真. All rights reserved.
//

import UIKit
import PGFramework


protocol HomeTableViewCellDelegate: NSObjectProtocol{
    
}

extension HomeTableViewCellDelegate {
    
}
// MARK: - Property
class HomeTableViewCell: BaseTableViewCell {
    weak var delegate: HomeTableViewCellDelegate? = nil
    @IBOutlet weak var userIcon: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
}

// MARK: - Life cycle
extension HomeTableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        setIcon()
    }
}

// MARK: - Protocol
extension HomeTableViewCell {
    
}

// MARK: - method
extension HomeTableViewCell {
    func setIcon(){
        userIcon.layer.cornerRadius = 25
        userIcon.layer.masksToBounds = true
    }
}

