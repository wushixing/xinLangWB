//
//  DemoViewController.swift
//  xinLangWB
//
//  Created by 吴世兴 on 2018/2/8.
//  Copyright © 2018年 wushixing. All rights reserved.
//

import UIKit

class DemoViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "第\(navigationController?.childViewControllers.count ?? 0)页"
    }
    
    @objc private func showNext() {
        
        let vc = DemoViewController()
        
        navigationController?.pushViewController(vc, animated: true)
    }

}

extension DemoViewController {
    
    override func setupUI() {
        super.setupUI()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "下一个", target: self, action: #selector(showNext))
    }
}
