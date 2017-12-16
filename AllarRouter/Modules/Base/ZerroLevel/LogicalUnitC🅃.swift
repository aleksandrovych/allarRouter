//
//  LogicalUnitC🅃.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 15.12.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation

class LogicalUnitC🅃: LogicalUnitC🅃P🄲 {
    weak var lu🄲: LogicalUnitP🄲! {
        didSet {
           Scene.from = lu🄲
        }
    }
    
    required init(lu🄲: LogicalUnitP🄲!) {
        self.lu🄲 = lu🄲
        
    }
}
