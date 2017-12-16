//
//  BaseVC.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 16.11.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation
import UIKit

class BaseVC🄲: UIViewController, CommandsVM🄲C🅃P🄲, LogicalUnitP🄲 {
    //MARK: -
    //MARK: - Properties
    //MARK: -
    
    //MARK: - RouterVM🄲C🅃P🄲
    var vm: CommandsVM🄲!
    
    //MARK: - LogicalUnitP🄲
    var inputData: InputData!
    var inputActions: InputActions!
    
    var outputData: OutputData!
    var outputActions: OutputActions!
    
    var privateData: PrivateData!
    var privateActions: PrivateActions!
    
    //MARK: - Live cycle
    required init(vm: CommandsVM🄲!) {
        super.init(nibName: nil, bundle: nil)
        self.vm = vm
        
        // LogicalUnitP🄲
        setupLU🄲Data()
        setupLU🄲Actions()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        storyboardLayout()
        snpLayout()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createUI()
    }
}

extension BaseVC🄲 : StoryboardWayP🄲 {
    //MARK: StoryboardWayP🄲
    func storyboardLayout() {
        // Override in subclasses
    }
}

extension BaseVC🄲 : SNPKitWayP🄲 {
    //MARK: SNPKitWayP🄲
    func snpLayout() {
        // Override in subclasses
    }
}

extension BaseVC🄲 : UICreateP🄲 {
    //MARK: UICreateP🄲
    func createUI() {
        // Override in subclasses
    }
}
