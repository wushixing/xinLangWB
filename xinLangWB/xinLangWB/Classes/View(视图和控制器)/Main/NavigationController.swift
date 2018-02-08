//
//  NavigationController.swift
//  xinLangWB
//
//  Created by 吴世兴 on 2018/2/7.
//  Copyright © 2018年 wushixing. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {
    
    /// 扩展 push 方法
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if childViewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        
            if let vc = viewController as? BaseViewController {
                
                var title = "く返回"
                
                if childViewControllers.count == 1 {
                    title = "く\(childViewControllers.first?.title ?? "返回")"
                }
                
                vc.navigationItem.leftBarButtonItem = UIBarButtonItem(title: title, target: self, action: #selector(popToParent))
            }
        }
        super.pushViewController(viewController, animated: true)
    }
    
    // POP 返回上一级界面
    @objc private func popToParent() {
        popViewController(animated: true)
    }
}
