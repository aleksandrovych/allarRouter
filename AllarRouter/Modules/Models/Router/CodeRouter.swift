//
//  CodeRouter.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 16.12.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation

class CodeRouter: LogicalUnit, DBRouterP🄲 {
    open static var shared: CodeRouter = {
        let router = CodeRouter()
        return router
    }()
}
