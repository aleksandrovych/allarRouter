//
//  CodeRouterC🅃.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 16.12.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation

class CodeRouterC🅃: LogicalUnitC🅃, CodeRouterC🅃P🄲 {
    open var router: CodeRouter!
    
    required init(lu🄲: LogicalUnitP🄲!) {
        super.init(lu🄲: lu🄲)
        self.router = CodeRouter.shared
    }
}
