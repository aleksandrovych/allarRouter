//
//  LogicalUnit.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 29.11.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation

class LogicalUnit: InputP, OutputP  {

    required init() {
        setupI0Data()
    }
    
    var inputData: InputData!
    //var inputActions: Struct!
    
    var outputData: OutputData!
    //var outputActions: Struct
    
    func setupI0Data() {
        let name = String(describing: Mirror(reflecting: self).subjectType)
        
        let splitted = name
            .characters
            .splitBefore(separator: { $0.isUpperCase })
            .map{String($0)}
        
        var result = ""
        splitted.forEach { element in
            guard element.characters.count > 1 else {return}
            result.append(element)
        }
        
        let appName = Bundle.main.object(forInfoDictionaryKey: "CFBundleName") as! String
        
        let input: String! = "\(appName).\(result)ID"
        let inputType = NSClassFromString(input) as! InputData.Type
        inputData = inputType.init()
        
        let output = "\(appName).\(result)OD"
        let outputType = NSClassFromString(output) as! OutputData.Type
        outputData = outputType.init()
    }
}
