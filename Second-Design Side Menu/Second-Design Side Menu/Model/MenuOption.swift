//
//  menuOption.swift
//  Second-Design Side Menu
//
//  Created by عبدالعزيز رضا  on 2/17/21.
//  Copyright © 2021 abdelazizReda. All rights reserved.
//

import UIKit

enum MenuOption: Int , CustomStringConvertible {

    case profile
    case inbox
    case notification
    case settings
    
    var description:String{
        switch self {
            
        case .profile: return "Profile"
        case .inbox:  return "Inboxe"
        case .notification:  return "Notification"
        case .settings:  return "Settings"
      
    }
}
        var image:UIImage{
            switch self {
            case .profile: return UIImage(named: "man") ?? UIImage()
            case .inbox: return UIImage(named: "email (1)") ?? UIImage()
            case .notification:return UIImage(named: "notification") ?? UIImage()
            case .settings:return UIImage(named: "settings") ?? UIImage()
          
        }
    }
}
