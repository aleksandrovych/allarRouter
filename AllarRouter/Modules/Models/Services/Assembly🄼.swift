//
//  Assembly.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 30.11.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation

class Assembly🄼 {
    
    static var shared: Assembly🄼 = Assembly🄼()
    
    fileprivate init() {}
    
    fileprivate var scene: Scene!
    
    func getScene() -> Scene {
        guard (scene != nil) else { scene = Scene(); return scene}
        return scene
    }
}
