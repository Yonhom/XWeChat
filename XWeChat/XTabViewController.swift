//
//  XTabViewController.swift
//  XWeChat
//
//  Created by 徐永宏 on 2017/6/3.
//  Copyright © 2017年 徐永宏. All rights reserved.
//

import UIKit

class XTabViewController: UITabBarController {
    
    // load the tab bar resources
    let titles = ["微信", "联系人", "发现", "自己"]
    let normalTabImgs = [
        UIImage(named: "tabbar_mainframe"),
        UIImage(named: "tabbar_contacts"),
        UIImage(named: "tabbar_discover"),
        UIImage(named: "tabbar_me")
        ]
    let selectedTabImgs = [
        UIImage(named: "tabbar_mainframeHL"),
        UIImage(named: "tabbar_contactsHL"),
        UIImage(named: "tabbar_discoverHL"),
        UIImage(named: "tabbar_meHL")
    ]
    let controllers = [
        MessageViewController(), ContactsViewController(), DiscoverViewController(), MeViewController()
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set the title for every controller in tab
        for (index, controller) in controllers.enumerated() {
            
            // set the tab bar for every controller added to the tab bar controller
            controller.tabBarItem.title = titles[index]
            controller.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.lightGray], for: .normal)
            controller.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.green], for: .selected)
            
            controller.tabBarItem.image = normalTabImgs[index]?.withRenderingMode(.alwaysOriginal)
            controller.tabBarItem.selectedImage = selectedTabImgs[index]?.withRenderingMode(.alwaysOriginal)
            
            
            // add the controller in the tab bar controller
            addChildViewController(controller)
            
        }
        
        
    }
}




































