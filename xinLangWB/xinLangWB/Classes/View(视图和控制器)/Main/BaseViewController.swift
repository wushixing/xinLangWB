//
//  BaseViewController.swift
//  xinLangWB
//
//  Created by 吴世兴 on 2018/2/7.
//  Copyright © 2018年 wushixing. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
}

extension BaseViewController {
    
    @objc func setupUI() {
        
        view.backgroundColor = UIColor().randomColor
    }
}
