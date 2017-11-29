//
//  Request.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 29.11.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation

class Request {
    
    static var Request1:  String!{return action()}
    static var Request2: String!{return action()}
    static var Request3:  String!{return action()}
    
    static var action = { () -> String in
        print(#function)
        return "Request1"
    }
}
