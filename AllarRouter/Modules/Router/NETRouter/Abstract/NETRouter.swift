//
//  NETRouter.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 29.11.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation

class NETRouter: LogicalUnit, NETRouterP {
    public static var shared: NETRouter = {
        let router = NETRouter()
        return router
    }()
}
