//
//  RouterFabricP.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 16.11.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation

protocol RouterFP {
    static func activist(_ type: ActionT) -> UIRouterC
    static func gateway(_ type: GatewayT) -> NETRouterC
    static func local(_ type: LocalT) -> DBRouterC
}
