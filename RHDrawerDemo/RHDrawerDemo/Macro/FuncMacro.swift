//
//  FuncMacro.swift
//  RHDrawerDemo
//
//  Created by 郭人豪 on 2017/6/27.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

import Foundation
import UIKit

// 颜色
func Color_RGB(red : NSInteger, green : NSInteger, blue : NSInteger) -> UIColor {
    
    return UIColor.init(red: CGFloat(red)/CGFloat(255.0), green: CGFloat(green)/CGFloat(255.0), blue: CGFloat(blue)/CGFloat(255.0), alpha: 1.0)
}
func Color_RGBA(red : NSInteger, green : NSInteger, blue : NSInteger, alpha : CGFloat) -> UIColor {
    
    return UIColor.init(red: CGFloat(red)/CGFloat(255.0), green: CGFloat(green)/CGFloat(255.0), blue: CGFloat(blue)/CGFloat(255.0), alpha: alpha)
}
