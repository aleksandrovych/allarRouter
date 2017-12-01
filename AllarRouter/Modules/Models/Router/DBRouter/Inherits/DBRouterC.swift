//
//  DBRouterC.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 29.11.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation

class DBRouterC: LogicalUnit, DBRouterCP {
    open var router: DBRouter!
    
    required init() {
        self.router = DBRouter.shared
    }
}
