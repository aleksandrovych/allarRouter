//
//  BaseVC.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 16.11.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation
import UIKit

class BaseVC🄲: UIViewController, StoryboardWayP🄲, SNPKitWayP🄲, UICreateP🄲 {
    var vm: RouterVM🄲!
    
    init(vm: RouterVM🄲!) {
        super.init(nibName: nil, bundle: nil)
        self.vm = vm
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
    
    
    //MARK: StoryboardWayP🄲
    func storyboardLayout() {
        // Override in subclasses
    }
    
    //MARK: SNPKitWayP🄲
    func snpLayout() {
        // Override in subclasses
    }
    
    //MARK: CreateHierarchyP🄲
    func createUI() {
        // Override in subclasses
    }
}
