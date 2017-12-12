//
//  NavigationBarVM.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 29.11.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation
import UIKit

class NavigationBarVM🄲: UIView, InputP🄲, OutputP🄲 {
    
    init() {
        super.init(frame: CGRect(x:0, y:0, width: UIScreen.main.bounds.width, height: 64))
        
        inputData = InputData()
        outputData = OutputData()
        
        inputActions = InputActions()
        outputActions = OutputActions()
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
    }
    
    var inputData: InputData!
    var inputActions: InputActions!
    
    var outputData: OutputData!
    var outputActions: OutputActions!
}
