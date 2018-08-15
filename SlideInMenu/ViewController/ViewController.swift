//
//  ViewController.swift
//  SlideInMenu
//
//  Created by Vaifat Huy on 8/15/18.
//  Copyright © 2018 Vaifat Huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private lazy var menuVC: UIViewController = {
        let vc = storyboard?.instantiateViewController(withIdentifier: "menuVC")
        vc?.view.frame = CGRect(x: -self.view.frame.width, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        return vc!
    }()
    
    private lazy var blackView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(white: 0, alpha: 0.28)
        view.isUserInteractionEnabled = true
        view.layer.opacity = 0
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.view.addSubview(menuVC.view)
        setupBlackView()
    }

    @IBAction func menuButton(_ sender: Any) {
        self.moveInMenu { _ in }
    }
    
    private func setupBlackView(){
        self.blackView.frame = self.view.frame
        navigationController?.view.insertSubview(self.blackView, aboveSubview: self.menuVC.view)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleDismissMenu(gesture:)))
        self.blackView.addGestureRecognizer(tapGesture)
    }
    
    private func moveInMenu(completion: @ escaping (_ isAnimated: Bool) -> ()){
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseOut, animations: {
            self.menuVC.view.frame = CGRect(x: 0, y: 0, width: self.view.frame.width - 100, height: self.view.frame.height)
            self.blackView.alpha = 0.5
        }) { (animateCompleted) in
            completion(true)
        }
    }
    
    private func moveOutMenu(completion: @ escaping (_ isAnimated: Bool) -> ()){
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseOut, animations: {
            self.menuVC.view.frame = CGRect(x: -self.view.frame.width, y: 0, width: self.view.frame.width - 100, height: self.view.frame.height)
            self.blackView.alpha = 0
        }) { (animateCompleted) in
            completion(true)
        }
    }
    
    @objc func handleDismissMenu(gesture: UITapGestureRecognizer) {
        self.moveOutMenu { _ in }
    }
}

