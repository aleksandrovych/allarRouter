//
//  RouterVMP.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 16.11.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation

protocol CommandsVMP🄲 {
    var push: Pusher {get}
    var modal: Modaler {get}
    var pop: Poper {get}
    var get: Getter {get}
    var create: Creator {get}
    var update: Updater {get}
    var delete: Deletor {get}
    var save: Saver {get}
    var select: Selectioner {get}
    var clean: Сleaner {get}
    var run: Runner {get}
}
