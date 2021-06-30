//
//  ContainerVC.swift
//  Second-Design Side Menu
//
//  Created by عبدالعزيز رضا  on 2/16/21.
//  Copyright © 2021 abdelazizReda. All rights reserved.
//

import UIKit

class ContainerVC:UIViewController{
    
    //MARK:- properties
    var menuController:UIViewController!
    var centerController:UIViewController!
    var isExpended = false
    
     //MARK:- Init
    override func viewDidLoad() {
        super.viewDidLoad()
        configuerHomeVC()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    
    
     //MARK:- Handellers
 
    func configuerHomeVC(){
        let homeVC = HomeVC()
        homeVC.deleget = self
        centerController = UINavigationController(rootViewController: homeVC)
        view.addSubview(centerController.view)
        addChild(centerController)
        centerController.didMove(toParent: self)
    }
    
    func configuerMenuVC(){
        if menuController == nil{
        menuController = SideVC()
        view.insertSubview(menuController.view, at: 0)
        addChild(menuController)
        menuController.didMove(toParent: self)
        print("ammmmmmmmin")
        }
    }
    
    func ShowMenuController(shouldExpend:Bool){
        if shouldExpend{
            //show menu
            UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.centerController.view.frame.origin.x = self.centerController.view.frame.width - 80
            }, completion: nil)
            
            
        }else{
           //dismiss menu
            
            UIView.animate(withDuration: 0.6, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.centerController.view.frame.origin.x = 0
            }, completion: nil)
        }
    }
}



extension ContainerVC:HomeCntrollerDeledet{
    func handelMenuTapped() {
        
        if !isExpended{
            configuerMenuVC()
        }
        
        isExpended = !isExpended
        ShowMenuController(shouldExpend: isExpended )
    }
}

