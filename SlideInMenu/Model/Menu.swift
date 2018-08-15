//
//  Menu.swift
//  SlideInMenu
//
//  Created by Vaifat Huy on 8/15/18.
//  Copyright © 2018 Vaifat Huy. All rights reserved.
//

import Foundation
import UIKit

class Menu {
    let menuIcon: UIImage
    let menuLabel: String
    
    init(menuIcon: UIImage, menuLabel: String) {
        self.menuIcon = menuIcon
        self.menuLabel = menuLabel
    }
    
    init() {
        self.menuIcon = UIImage()
        self.menuLabel = ""
    }
}
