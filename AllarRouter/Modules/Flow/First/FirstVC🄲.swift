//
//  FirstVC.swift
//  AllarRouter
//
//  Created by Allar-Alexey Alexandrovich on 16.11.17.
//  Copyright © 2017 Allar-Alexey Alexandrovich. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class FirstVC🄲: CommandsVC🄲 {
    var button: UIButton!
    
    override func createUI() {
        button = UIButton()
        view.addSubview(button)
        button.setTitle("Second screen", for: .normal)
        button.setTitleColor(Colors.gray1, for: .normal)
        button.addTarget(self, action: #selector(secondSClicked), for: .touchUpInside)
        button.setContentHuggingPriority(1000, for: .horizontal)
        button.backgroundColor = Colors.black1
        button.layer.borderColor = Colors.gray2.cgColor
        button.isUserInteractionEnabled = true
        button.layer.borderWidth = 2
        button.contentEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
    
    override func snpLayout() {
        button.snp.makeConstraints { make in
            make.center.equalTo(self.view)
        }
    }
    
    //MARK: Actions
    
    func secondSClicked(sender: UIButton) {
        //vm.navigateToSecondSAction()
    }
}

