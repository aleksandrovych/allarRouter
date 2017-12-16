//
//  FirstOD.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 01.12.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation

class FirstVM🄲OD🄲: OutputData {
    var variable1: String!
    var variable2: String!
    var variable3: String!
}

extension FirstVM🄲OD🄲: SecondVM🄲IDP🄲 {
    var s_variable1: String {
        set {variable1 = newValue}
        get {return variable1}
    }
    
    var s_variable2: String {
        set {variable2 = newValue}
        get {return variable2}
    }
    
    var s_variable3: String {
        set {variable3 = newValue}
        get {return variable3}
    }
}

extension FirstVM🄲OD🄲: ThirdVM🄲IDP🄲 {
    var th_variable1: String {
        set {variable1 = newValue}
        get {return variable1}
    }
    
    var th_variable2: String {
        set {variable2 = newValue}
        get {return variable2}
    }
    
    var th_variable3: String {
        set {variable3 = newValue}
        get {return variable3}
    }
}

extension FirstVM🄲OD🄲: SelectionerIDP🄲 {
    var sel_variable: String {
        set {variable1 = newValue}
        get {return variable1}
    }
}
