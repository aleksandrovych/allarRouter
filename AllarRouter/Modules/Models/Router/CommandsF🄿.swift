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

enum CodeT🅃 {
    case run
}

class CommandsF🄿: CommandsF🄿P🄲 {
    
    weak var lu🄲: LogicalUnitP🄲!
    
    required init(lu🄲: LogicalUnitP🄲!) {
        self.lu🄲 = lu🄲
    }
    
    func activist(_ type: ActionT🅃) -> UIRouterC🅃 {
        switch type {
        case .push:
            return Pusher(lu🄲: self.lu🄲)
        case .modal:
            return Modaler(lu🄲: self.lu🄲)
        case .pop:
            return Poper(lu🄲: self.lu🄲)
        }
    }
    
    func gateway(_ type: GatewayT🅃) -> NETRouterC🅃 {
        switch type {
        case .get:
            return Getter(lu🄲: self.lu🄲)
        case .create:
            return Creator(lu🄲: self.lu🄲)
        case .update:
            return Updater(lu🄲: self.lu🄲)
        case .delete:
            return Deletor(lu🄲: self.lu🄲)
        }
    }
    
    func local(_ type: LocalT🅃) -> DBRouterC🅃 {
        switch type {
        case .save:
            return Saver(lu🄲: self.lu🄲)
        case .select:
            return Selectioner(lu🄲: self.lu🄲)
        case .clean:
            return Сleaner(lu🄲: self.lu🄲)
        }
    }
    
    func code(_ type: CodeT🅃) -> CodeRouterC🅃 {
        switch type {
        case .run:
            return Runner(lu🄲: self.lu🄲)
        }
    }
}
