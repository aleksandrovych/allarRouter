//
//  AppDelegate.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 16.11.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import UIKit
import Foundation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let root = FirstVC🄲(vm: FirstVM🄲())
        root.view.backgroundColor = Colors.gray1
        _ = UIRouter(root: root)
        window = UIRouter.window
        
        return true
    }
}

