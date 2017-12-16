//
//  Router.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 16.11.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation
import UIKit

class UIRouter: LogicalUnit, UIRouterP🄲{
    
    static var window: UIWindow!
    
    fileprivate static var root: UIViewController!
    
    open var currentNavigation: UINavigationController!
    
    open static var shared: UIRouter = {
        let router = UIRouter(window: window, root: root)
        return router
    }()
    
    @discardableResult required init(window: UIWindow! = UIRouter.createWindowInScreenSize()
                    , root: UIViewController! = UIRouter.createVCOfBaseType()) {
        UIRouter.window = window
        UIRouter.root = root
        self.currentNavigation = UINavigationController(rootViewController: root)
        window.rootViewController = self.currentNavigation
        window.makeKeyAndVisible()
    }
    
    @discardableResult required convenience init() {
        self.init(window: UIRouter.createWindowInScreenSize()
        , root: UIRouter.createVCOfBaseType())
    }
    
    //TODO: Get view controller
    open func getViewController(_ name: String) -> UIViewController {
        
        let vcName = name + "VC🄲"
        let vmName = name + "VM🄲"
        
        let appName = Bundle.main.object(forInfoDictionaryKey: "CFBundleName") as! String
        let viewControllerType = NSClassFromString("\(appName).\(vcName)") as! BaseVC🄲.Type
        let viewModelType = NSClassFromString("\(appName).\(vmName)") as! CommandsVM🄲.Type
        
        return viewControllerType.init(vm: viewModelType.init())
    }
    
    fileprivate static func createWindowInScreenSize() -> UIWindow{
        return UIWindow(frame: UIScreen.main.bounds)
    }
    
    fileprivate static func createVCOfBaseType() -> BaseVC🄲{
        return BaseVC🄲(vm: CommandsVM🄲())
    }
}
