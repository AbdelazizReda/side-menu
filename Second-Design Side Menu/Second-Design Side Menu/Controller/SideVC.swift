//
//  SideVC.swift
//  Second-Design Side Menu
//
//  Created by عبدالعزيز رضا  on 2/16/21.
//  Copyright © 2021 abdelazizReda. All rights reserved.
//

import UIKit

class SideVC:UIViewController{
    
    //MARK:- properties
    var tableView:UITableView!
    private let reuseidentifier = "MenuOptionsCell"

    
     //MARK:- Init
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        ConfiguerCell()
    }
     //MARK:- Handellers
    func ConfiguerCell(){
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(menuOptionsCellTableViewCell.self, forCellReuseIdentifier: reuseidentifier)
        tableView.backgroundColor = .darkGray
        tableView.separatorStyle = .none
        tableView.rowHeight = 80
        
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
          tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
          tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    }
}

extension SideVC:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseidentifier, for: indexPath) as! menuOptionsCellTableViewCell
        let menuOption = MenuOption(rawValue: indexPath.row)
        cell.discriptionTitle.text = menuOption?.description
        cell.iconImage.image = menuOption?.image
        
        return cell
    }
    
    
}
