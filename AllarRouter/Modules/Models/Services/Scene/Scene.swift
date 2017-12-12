//
//  SceneS.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 30.11.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation
import RxSwift
import ObjectiveC.runtime

class Scene {
    //static var from:Int!
    //static var to:Int!
    //static var tuple = (from, to)
    
    static func start() {
        //tuple[0] = from
        //tuple[1] = to
    }

    func getTypesOfProperties(in clazz: NSObject.Type) -> Dictionary<String, Any>? {
        var count = UInt32()
        guard let properties = class_copyPropertyList(clazz, &count) else { return nil }
        var types: Dictionary<String, Any> = [:]
        for i in 0..<Int(count) {
            guard
                let property: objc_property_t = properties[i],
                let name = getNameOf(property: property)
                else { continue }
            let type = getTypeOf(property: property)
            let myObject = Unmanaged<AnyObject>.fromOpaque(UnsafeMutablePointer(property)).takeUnretainedValue()
            
           _ = (myObject as! Observable<Any>).subscribe(onNext: { results in
                print(results)
            })
            
            types[name] = type
        }
        free(properties)
        return types
    }
    
    func getTypeOf(property: objc_property_t) -> AnyClass  {
        guard let attributesAsNSString: NSString = NSString(utf8String: property_getAttributes(property)) else { return Any.self as! AnyClass}
        let attributes = attributesAsNSString as String
        let slices = attributes.components(separatedBy: "\"")
        guard slices.count > 1 else { return valueType(withAttributes: attributes) as! AnyClass as AnyClass}
        let objectClassName = slices[1]
        let objectClass = NSClassFromString(objectClassName) as! NSObject.Type
        
        return objectClass
    }
    
    func getNameOf(property: objc_property_t) -> String? {
        guard
            let name: NSString = NSString(utf8String: property_getName(property))
            else { return nil }
        return name as String
    }
    
    func stringClassFromString(_ className: String) -> AnyClass! {
    
    /// get namespace
    let namespace = Bundle.main.infoDictionary!["CFBundleExecutable"] as! String;
    
    /// get 'anyClass' with classname and namespace
    let cls: AnyClass = NSClassFromString("\(namespace).\(className)")!;
    
    // return AnyClass!
    return cls;
    }
    
    let valueTypesMap: Dictionary<String, Any> = [
        "c" : Int8.self,
        "s" : Int16.self,
        "i" : Int32.self,
        "q" : Int.self, //also: Int64, NSInteger, only true on 64 bit platforms
        "S" : UInt16.self,
        "I" : UInt32.self,
        "Q" : UInt.self, //also UInt64, only true on 64 bit platforms
        "B" : Bool.self,
        "d" : Double.self,
        "f" : Float.self,
        "{" : Decimal.self
    ]
    
    func valueType(withAttributes attributes: String) -> Any {
        //guard let letter = attributes.substring(from: 1, to: 2), let type = valueTypesMap[letter] else { return Any.self }
        return "a"//type
    }
    
}
