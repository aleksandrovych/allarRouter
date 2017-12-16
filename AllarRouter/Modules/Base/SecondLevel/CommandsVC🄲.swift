//
//  CommandsVC🄲.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 16.12.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation

class CommandsVC🄲: BaseVC🄲, CommandsVCP🄲 {
    
    var fabric: CommandsF🄿!
    
    required init(vm: CommandsVM🄲!) {
        super.init(vm: vm)
        self.fabric = CommandsF🄿(lu🄲: self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // CommandsVCP🄲
    lazy var run: Runner = self.fabric.code(.run) as! Runner
}
