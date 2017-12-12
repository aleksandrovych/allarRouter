//
//  LogicalUnit.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 29.11.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation

class LogicalUnit: InputP🄲, OutputP🄲  {

    required init() {
        setupI0🄲Data()
        setupI0🄲Actions()
    }
    
    var inputData: InputData!
    var inputActions: InputActions!
    
    var outputData: OutputData!
    var outputActions: OutputActions!
    
    func setupI0🄲Data() {
        let tuple = nakedName()
        
        let result = tuple.0
        let appName = tuple.1
        
        let inputD🄲: String! = "\(appName).\(result)ID🄲"
        let inputD🄲Type = NSClassFromString(inputD🄲) as! InputData.Type
        inputData = inputD🄲Type.init()
        
        let outputD🄲 = "\(appName).\(result)OD🄲"
        let outputD🄲Type = NSClassFromString(outputD🄲) as! OutputData.Type
        outputData = outputD🄲Type.init()
    }
    
    func setupI0🄲Actions() {
        let tuple = nakedName()
        
        let result = tuple.0
        let appName = tuple.1
        
        let inputA🄲: String! = "\(appName).\(result)IA🄲"
        let inputA🄲Type = NSClassFromString(inputA🄲) as! InputActions.Type
        inputActions = inputA🄲Type.init()
        
        let outputA🄲 = "\(appName).\(result)OA🄲"
        let outputA🄲Type = NSClassFromString(outputA🄲) as! OutputActions.Type
        outputActions = outputA🄲Type.init()
    }
    
    func nakedName() -> (String, String) {
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
        
        return (result, appName)
    }
}
