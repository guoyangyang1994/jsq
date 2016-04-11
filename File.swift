//
//  File.swift
//  jsq
//
//  Created by 20131105798 on 16/4/11.
//  Copyright © 2016年 20131105798. All rights reserved.
//

import Foundation
struct 计算 {
    private var 当前算法:算法 = .未选择
    
    
    mutating func 设置当前算法(临时:算法) {
        当前算法 = 临时
    }
    
    func 读取当前算法() -> 算法! {
        return 当前算法
    }
    
    
    
    
    enum 算法 {
        case jia
        case jian
        case cheng
        case chu
        case 未选择
    }
    
    func 求结果(操作数:Double, 被操作数:Double) ->String {
        var 返回 = ""
        switch 当前算法 {
        case .jia:
            返回 = "\(操作数 + 被操作数)"
        case .jian:
            返回 = "\(操作数 - 被操作数)"
        case .cheng:
            返回 = "\(操作数 * 被操作数)"
        case .chu where 被操作数 != 0 :
            返回 = "\(操作数 / 被操作数)"
                case .未选择:
            返回 = "未选择算法！"
        default:
            返回 = "0 不能做被除数！"
            
        }
        return 返回
        
    }
}
