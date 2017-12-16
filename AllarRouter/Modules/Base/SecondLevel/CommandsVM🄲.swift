//
//  RouterVM.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 16.11.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation

class CommandsVM🄲: BaseVM🄲, CommandsVMP🄲 {
    
    var fabric: CommandsF🄿!
    
    required init() {
        super.init()
        self.fabric = CommandsF🄿(lu🄲: self)
    }
    
    // CommandsVMP🄲
    lazy var push: Pusher = self.fabric.activist(.push) as! Pusher
    lazy var modal: Modaler = self.fabric.activist(.modal) as! Modaler
    lazy var pop: Poper = self.fabric.activist(.pop) as! Poper
    
    lazy var get: Getter = self.fabric.gateway(.get) as! Getter
    lazy var create: Creator = self.fabric.gateway(.create) as! Creator
    lazy var update: Updater = self.fabric.gateway(.update) as! Updater
    lazy var delete: Deletor = self.fabric.gateway(.delete) as! Deletor
    
    lazy var save: Saver = self.fabric.local(.save) as! Saver
    lazy var select: Selectioner = self.fabric.local(.save) as! Selectioner
    lazy var clean: Сleaner = self.fabric.local(.clean) as! Сleaner
    
    lazy var run: Runner = self.fabric.code(.run) as! Runner
}
