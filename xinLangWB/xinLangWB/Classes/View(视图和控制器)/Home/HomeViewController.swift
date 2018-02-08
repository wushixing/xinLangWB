//
//  HomeViewController.swift
//  xinLangWB
//
//  Created by 吴世兴 on 2018/2/7.
//  Copyright © 2018年 wushixing. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {
    
    /// 设置点击事件，显示好友
    @objc private func showFriends() {
        
        let vc = DemoViewController()
        
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension HomeViewController {
    
    override func setupUI() {
        super.setupUI()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "好友", target: self, action: #selector(showFriends))
    }
}
