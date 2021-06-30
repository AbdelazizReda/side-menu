//
//  HomeVC.swift
//  Second-Design Side Menu
//
//  Created by عبدالعزيز رضا  on 2/16/21.
//  Copyright © 2021 abdelazizReda. All rights reserved.
//

import UIKit

class HomeVC:UIViewController{
    
    //MARK:- properties
    var deleget:HomeCntrollerDeledet?
    
     //MARK:- Init
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configuerNavigationBar()
    }
     
    @objc func HandelBarTapped() {
        deleget?.handelMenuTapped()
    }
    
    //MARK:- Handellers
    func configuerNavigationBar() {
        navigationController?.navigationBar.tintColor = .darkText
        navigationController?.navigationBar.barStyle = .default
        navigationItem.title = "Side Menu"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image:UIImage(systemName: "list.dash")!.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(HandelBarTapped))
    }
}
