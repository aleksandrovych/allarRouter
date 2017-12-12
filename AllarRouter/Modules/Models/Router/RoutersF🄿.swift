//
//  RoutersF.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 16.11.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation

enum ActionT🅃 {
    case push
    case pop
    case modal
}

enum GatewayT🅃 {
    case get
    case create
    case update
    case delete
}

enum LocalT🅃 {
    case save
    case select
    case clean
}

class RoutersF🄿: RouterF🄿P🄲 {
    static func activist(_ type: ActionT🅃) -> UIRouterC🅃 {
        switch type {
        case .push:
            return Pusher()
        case .modal:
            return Modaler()
        case .pop:
            return Poper()
        }
    }
    
    static func gateway(_ type: GatewayT🅃) -> NETRouterC🅃 {
        switch type {
        case .get:
            return Getter()
        case .create:
            return Creator()
        case .update:
            return Updater()
        case .delete:
            return Deletor()
        }
    }
    
    static func local(_ type: LocalT🅃) -> DBRouterC🅃 {
        switch type {
        case .save:
            return Saver()
        case .select:
            return Selectioner()
        case .clean:
            return Сleaner()
        }
    }
}

