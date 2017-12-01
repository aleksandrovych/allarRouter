//
//  DBRouter.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 29.11.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation

class DBRouter: LogicalUnit, DBRouterP {
    open static var shared: DBRouter = {
        let router = DBRouter()
        return router
    }()
}
