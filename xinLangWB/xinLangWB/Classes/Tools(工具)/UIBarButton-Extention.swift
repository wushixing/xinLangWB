//
//  UIBarButton-Extention.swift
//  xinLangWB
//
//  Created by 吴世兴 on 2018/2/8.
//  Copyright © 2018年 wushixing. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    
    convenience init(title: String,target: AnyObject,action: Selector,isBack: Bool = false) {
        let btn = UIButton()
        btn.setTitle(title, for: .normal)
        btn.setTitleColor(UIColor.darkGray, for: .normal)
        btn.setTitleColor(UIColor.orange, for: .highlighted)
        btn.addTarget(target, action: action, for: .touchUpInside)
        
        if isBack {
            btn.setImage(UIImage(named: "tableTipBtn"), for: .normal)
        }
        
        self.init(customView: btn)
    }
}
