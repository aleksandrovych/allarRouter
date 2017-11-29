//
//  BaseCell.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 29.11.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation
import UIKit

class BaseCell: UITableViewCell, StoryboardWayP, SNPKitWayP {
    
    func storyboardLayout() {
        // Override in subclasses
    }
    
    func snpLayout() {
        // Override in subclasses
    }
    
    override func layoutSubviews() {
        storyboardLayout()
        snpLayout()
    }
}
