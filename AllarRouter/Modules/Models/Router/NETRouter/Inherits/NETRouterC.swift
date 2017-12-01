//
//  NETRouterC.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 29.11.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation

class NETRouterC: NETRouterCP{
    open var router: NETRouter!
    
    required init() {
        self.router = NETRouter.shared
    }
}
