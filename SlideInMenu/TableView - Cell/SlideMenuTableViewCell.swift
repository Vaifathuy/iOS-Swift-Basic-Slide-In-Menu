//
//  SlideMenuTableViewCell.swift
//  SlideInMenu
//
//  Created by Vaifat Huy on 8/15/18.
//  Copyright © 2018 Vaifat Huy. All rights reserved.
//

import UIKit

class SlideMenuTableViewCell: UITableViewCell {

    @IBOutlet weak var menuLabel: UILabel!
    @IBOutlet weak var menuIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
