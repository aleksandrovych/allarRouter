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
    required init() {}
    
    static func /(left: Pusher, right: String!) {
        Pusher.createVC🄲(left, vc:right, animated:true)
    }
    
    static func !/(left: Pusher, right: String!) {
        Pusher.createVC🄲(left, vc:right, animated:false)
    }
    
    static func createVC🄲(_ pusher: Pusher, vc: String!, animated: Bool!){
        assert(vc != nil, "Empty controller name")
        let controller = pusher.router.getViewController(vc)
        
        let navigation = pusher.router.currentNavigation
        assert(navigation != nil, "Navigation controller shouldnt be nil")
        
        if let controllers = navigation?.viewControllers{
            if controllers.count > 0{
                navigation?.pushViewController(controller, animated: animated)
                return
            }
        }
        
        navigation?.viewControllers = [controller]
    }
}
