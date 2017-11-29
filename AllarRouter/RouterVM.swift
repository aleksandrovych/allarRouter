//
//  RouterVM.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 16.11.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation

class RouterVM: BaseVM, RouterVMP {
    lazy var push: Pusher = RoutersF.activist(.push) as! Pusher
    lazy var modal: Modaler = RoutersF.activist(.modal) as! Modaler
    lazy var pop: Poper = RoutersF.activist(.pop) as! Poper
    
    lazy var get: Getter = RoutersF.gateway(.get) as! Getter
    lazy var create: Creator = RoutersF.gateway(.create) as! Creator
    lazy var update: Updater = RoutersF.gateway(.update) as! Updater
    lazy var delete: Deletor = RoutersF.gateway(.delete) as! Deletor
    
    lazy var save: Saver = RoutersF.local(.save) as! Saver
    lazy var select: Selectioner = RoutersF.local(.save) as! Selectioner
    lazy var clean: Сleaner = RoutersF.local(.clean) as! Сleaner
}
