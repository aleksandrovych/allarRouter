//
//  DBRouterC.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 29.11.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation

class DBRouterC🅃: LogicalUnitC🅃, DBRouterC🅃P🄲 {
    open var router: DBRouter!
    
    required init(lu🄲: LogicalUnitP🄲!) {
        super.init(lu🄲: lu🄲)
        self.router = DBRouter.shared
    }
}
