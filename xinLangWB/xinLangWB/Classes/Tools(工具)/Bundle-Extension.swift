//
//  Bundle-Extension.swift
//  CopyXLWB
//
//  Created by 吴世兴 on 2018/1/31.
//  Copyright © 2018年 吴世兴. All rights reserved.
//

import Foundation

extension Bundle {
    
    var namespace: String {
        return infoDictionary?["CFBundleName"] as? String ?? ""
    }
}
