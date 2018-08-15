//
//  MenuViewController.swift
//  SlideInMenu
//
//  Created by Vaifat Huy on 8/15/18.
//  Copyright © 2018 Vaifat Huy. All rights reserved.
//

import UIKit

class SlideMenuViewController: UIViewController {

    @IBOutlet weak var SlideMenuTableView: UITableView!
    let menuList = [Menu(menuIcon: #imageLiteral(resourceName: "ic_home"), menuLabel: "Home"),
                    Menu(menuIcon: #imageLiteral(resourceName: "ic_info"), menuLabel: "Info")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SlideMenuTableView.dataSource = self
        SlideMenuTableView.delegate = self
    }
}

extension SlideMenuViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.menuList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let eachMenu = menuList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell") as! SlideMenuTableViewCell
        cell.menuIcon.tintColor = #colorLiteral(red: 0.8149477243, green: 0.6466189027, blue: 0, alpha: 1)
        cell.menuLabel.textColor = #colorLiteral(red: 0.8149477243, green: 0.6466189027, blue: 0, alpha: 1)
        cell.menuIcon.image = eachMenu.menuIcon.withRenderingMode(.alwaysTemplate)
        cell.menuLabel.text = eachMenu.menuLabel
        cell.selectionStyle = .none
        return cell
    }
}

extension SlideMenuViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
