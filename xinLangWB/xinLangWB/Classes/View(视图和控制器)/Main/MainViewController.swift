//
//  MainViewController.swift
//  xinLangWB
//
//  Created by 吴世兴 on 2018/2/7.
//  Copyright © 2018年 wushixing. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupChildControllers()
    }
}

extension MainViewController {
    
    private func setupChildControllers() {
        
        let array = [
            ["clsName": "HomeViewController", "title": "首页", "imageName": ""],
            ["clsName": "MessageViewController", "title": "消息", "imageName": ""],
            ["clsName": "DiscoverViewController", "title": "发现", "imageName": ""],
            ["clsName": "ProfileViewController", "title": "我", "imageName": ""]
        ]
        
        var arrayM = [UIViewController]()
        
        for dict in array {
            arrayM.append(controller(dict: dict))
        }
        
        viewControllers = arrayM
    }
    
    private func controller(dict: [String: String]) -> UIViewController {
        
        // 1.取得字典内容
        guard let clsName = dict["clsName"], let title = dict["title"], let imageName = dict["imageName"], let cls = NSClassFromString(Bundle.main.namespace + "." + clsName) as? UIViewController.Type else {
            return UIViewController()
        }
        
        // 2.创建视图控制器
        let vc = cls.init()
        
        vc.title = title
        
        let nav = NavigationController(rootViewController: vc)
        
        return nav
    }
}
