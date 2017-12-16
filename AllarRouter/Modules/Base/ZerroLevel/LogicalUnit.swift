//
//  LogicalUnit.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 29.11.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation

class LogicalUnit: LogicalUnitP🄲  {
    //MARK:
    //MARK: - Properties
    //MARK:
    
    //MARK: - LogicalUnitP🄲
    
    var inputData: InputData!
    var inputActions: InputActions!
    
    var outputData: OutputData!
    var outputActions: OutputActions!
    
    var privateData: PrivateData!
    var privateActions: PrivateActions!
    
    //MARK: - Live cycle
    
  required init() {
        setupLU🄲Data()
        setupLU🄲Actions()
    }
}
