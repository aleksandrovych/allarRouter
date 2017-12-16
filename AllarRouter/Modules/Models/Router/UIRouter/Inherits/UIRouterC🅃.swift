//
//  RouterContainer.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 16.11.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation

class UIRouterC🅃: LogicalUnitC🅃, UIRouterC🅃P🄲 {
    open var router: UIRouter!
    
    required init(lu🄲: LogicalUnitP🄲!) {
        super.init(lu🄲: lu🄲)
        self.router = UIRouter.shared
    }
}
