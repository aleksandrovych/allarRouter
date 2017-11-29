//
//  Local.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 29.11.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation

class Local {
    
    static var Local1:  String!{return action()}
    static var Local2: String!{return action()}
    static var Local3:  String!{return action()}
    
    static var action = { () -> String in
        print(#function)
        return "Local1"
    }
}
