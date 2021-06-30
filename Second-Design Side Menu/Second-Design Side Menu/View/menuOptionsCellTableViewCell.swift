//
//  menuOptionsCellTableViewCell.swift
//  Second-Design Side Menu
//
//  Created by عبدالعزيز رضا  on 2/17/21.
//  Copyright © 2021 abdelazizReda. All rights reserved.
//

import UIKit

class menuOptionsCellTableViewCell: UITableViewCell {

     //MARK:- properties
    
    let iconImage: UIImageView =  {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
     
        return iv
    }()
    
    
    var discriptionTitle: UILabel = {
        let titleLabel = UILabel()
        titleLabel.textColor = .white
        titleLabel.font = UIFont.systemFont(ofSize: 18)
        titleLabel.text = "Test hhhh"
        return titleLabel
        
    }()
    
     //MARK:- Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .darkGray
        addSubview(iconImage)
        iconImage.translatesAutoresizingMaskIntoConstraints = false
        iconImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        iconImage.leftAnchor.constraint(lessThanOrEqualTo: leftAnchor , constant: 12).isActive = true
        iconImage.heightAnchor.constraint(equalToConstant: 24).isActive = true
        iconImage.widthAnchor.constraint(equalToConstant: 24).isActive = true

        addSubview(discriptionTitle)
       discriptionTitle.translatesAutoresizingMaskIntoConstraints = false
        discriptionTitle.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        discriptionTitle.leftAnchor.constraint(equalTo: iconImage.rightAnchor , constant: 12).isActive = true
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
     //MARK:- Handellers

}
