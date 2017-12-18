//
//  Enum+Countable+Descriptable.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 16.12.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation

protocol Countable {
    static var count: Int { get }
}

protocol Descriptable {
    var description: String { get }
}

extension Countable where Self: RawRepresentable, Self.RawValue == Int {
    internal static var count: Int {
        var count = 0
        while let _ = Self(rawValue: count) {
            count += 1
        }
        return count
    }
    
}

extension Descriptable where Self: RawRepresentable, Self.RawValue == Int {
    internal var description: String {
        return String(describing: self)
    }
    
}
