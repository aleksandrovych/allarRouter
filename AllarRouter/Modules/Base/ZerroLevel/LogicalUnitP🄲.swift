//
//  LogicalUnitP🄲.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 16.12.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation

protocol LogicalUnitP🄲: class, InputP🄲, OutputP🄲, PrivateP🄲 {
}

extension LogicalUnitP🄲 where Self: AnyObject  {
    func setupLU🄲Data() {
        let tuple = String(describing: Mirror(reflecting: self).subjectType)
        
        let result = tuple.components(separatedBy: ".")[0]
        let appName = Bundle.main.object(forInfoDictionaryKey: "CFBundleName") as! String
        
        let inputD🄲: String! = "\(appName).\(result)ID🄲"
        let inputD🄲Type = NSClassFromString(inputD🄲) as! InputData.Type
        inputData = inputD🄲Type.init()
        
        let outputD🄲 = "\(appName).\(result)OD🄲"
        let outputD🄲Type = NSClassFromString(outputD🄲) as! OutputData.Type
        outputData = outputD🄲Type.init()
        
        let privateD🄲 = "\(appName).\(result)PD🄲"
        let privateD🄲Type = NSClassFromString(privateD🄲) as! PrivateData.Type
        privateData = privateD🄲Type.init()
    }
    
     func setupLU🄲Actions() {
        let tuple = String(describing: Mirror(reflecting: self).subjectType)
        
        let result = tuple.components(separatedBy: ".")[0]
        let appName = Bundle.main.object(forInfoDictionaryKey: "CFBundleName") as! String
        
        let inputA🄲: String! = "\(appName).\(result)IA🄲"
        let inputA🄲Type = NSClassFromString(inputA🄲) as! InputActions.Type
        inputActions = inputA🄲Type.init()
        
        let outputA🄲 = "\(appName).\(result)OA🄲"
        let outputA🄲Type = NSClassFromString(outputA🄲) as! OutputActions.Type
        outputActions = outputA🄲Type.init()
        
        let privateA🄲 = "\(appName).\(result)PA🄲"
        let privateA🄲Type = NSClassFromString(privateA🄲) as! PrivateActions.Type
        privateActions = privateA🄲Type.init()
    }
}

