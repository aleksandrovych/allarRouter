//
//  TO.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 16.11.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation

class TO {
    
    static var First:  String!{return action()}
    static var Second: String!{return action()}
    static var Third:  String!{return action()}
    
    static var action = { () -> String in 
        print(#function)
        return "SecondVC"
    }
}

