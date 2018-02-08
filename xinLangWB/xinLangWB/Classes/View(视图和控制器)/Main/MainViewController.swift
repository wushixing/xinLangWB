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
    
    // MARK: - 创建私有控件
    /// 1.撰写按钮
    private lazy var composeButton: UIButton = {
        let btn = UIButton()
        let count = CGFloat(childViewControllers.count)
        let tabBarW = kScreenW / count - 1
        btn.frame = tabBar.bounds.insetBy(dx: tabBarW * 2, dy: 0)
        btn.setImage(UIImage(named: "tabbar_compose_icon_add_highlighted"), for: .normal)
        btn.setBackgroundImage(UIImage(named: "tabbar_compose_button_highlighted"), for: .normal)
        return btn
    }()
    
    // 创建按钮的点击事件
    @objc private func composeStatus() {
        print("撰写按钮")
    }
}

extension MainViewController {
    
    private func setupChildControllers() {
        
        let array = [
            ["clsName": "HomeViewController", "title": "首页", "imageName": "home"],
            ["clsName": "MessageViewController", "title": "消息", "imageName": "message_center"],
            ["clsName": "UIViewController"],
            ["clsName": "DiscoverViewController", "title": "发现", "imageName": "discover"],
            ["clsName": "ProfileViewController", "title": "我", "imageName": "profile"]
        ]
        
        var arrayM = [UIViewController]()
        
        for dict in array {
            arrayM.append(controller(dict: dict))
        }
        
        viewControllers = arrayM
        
        // 2.将撰写按钮添加到 tabBar
        tabBar.addSubview(composeButton)
        composeButton.addTarget(self, action: #selector(composeStatus), for: .touchUpInside)
    }
    
    private func controller(dict: [String: String]) -> UIViewController {
        
        // 1.取得字典内容
        guard let clsName = dict["clsName"], let title = dict["title"], let imageName = dict["imageName"], let cls = NSClassFromString(Bundle.main.namespace + "." + clsName) as? UIViewController.Type else {
            return UIViewController()
        }
        
        // 2.创建视图控制器
        let vc = cls.init()
        
        vc.title = title
        vc.tabBarItem.image = UIImage(named: "tabbar_" + imageName)
        vc.tabBarItem.selectedImage = UIImage(named: "tabbar_" + imageName + "_selected")?.withRenderingMode(.alwaysOriginal)
        vc.tabBarItem.setTitleTextAttributes([.foregroundColor: UIColor.darkGray], for: .highlighted)
        
        let nav = NavigationController(rootViewController: vc)
        
        return nav
    }
}
