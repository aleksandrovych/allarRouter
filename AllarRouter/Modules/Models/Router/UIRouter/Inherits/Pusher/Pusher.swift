//
//  Pusher.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 16.11.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation

infix operator !/

class Pusher: UIRouterC🅃 {
    required init(lu🄲: LogicalUnitP🄲!) {
        super.init(lu🄲: lu🄲)
    }
    
    static func /(left: Pusher, right: String!) {
        Pusher.createVC🄲(left, name:right, animated:true)
    }
    
    static func !/(left: Pusher, right: String!) {
        Pusher.createVC🄲(left, name:right, animated:false)
    }
    
    static func createVC🄲(_ pusher: Pusher, name: String!, animated: Bool!){
        assert(name != nil, "Empty controller name")
        let controller = pusher.router.getViewController(name) as! BaseVC🄲
        Scene.to = controller.vm
        
        let navigation = pusher.router.currentNavigation
        assert(navigation != nil, "Navigation controller shouldn't be nil")
        
        if let controllers = navigation?.viewControllers{
            if controllers.count > 0{
                navigation?.pushViewController(controller, animated: animated)
                return
            }
        }
        
        navigation?.viewControllers = [controller]
    }
}
