//
//  AppDelegate.swift
//  XWeChat
//
//  Created by 徐永宏 on 2017/6/3.
//  Copyright © 2017年 徐永宏. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        
        window = UIWindow()
        window?.rootViewController = XTabViewController()
        window?.makeKeyAndVisible()
        
        return false
    }

}

