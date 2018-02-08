//
//  UIColor-Extention.swift
//  xinLangWB
//
//  Created by 吴世兴 on 2018/2/8.
//  Copyright © 2018年 wushixing. All rights reserved.
//

import UIKit

extension UIColor {
    
    var randomColor: UIColor {
        let r = CGFloat(arc4random()%255)
        let g = CGFloat(arc4random()%255)
        let b = CGFloat(arc4random()%255)
        
        return UIColor(red: r / 255, green: g / 255, blue: b / 255, alpha: 1)
    }
}
