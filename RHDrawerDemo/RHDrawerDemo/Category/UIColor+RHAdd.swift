//
//  UIColor+RHAdd.swift
//  RHDrawerDemo
//
//  Created by 郭人豪 on 2017/6/27.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    public class var random : UIColor {
        
        get {
            
            return UIColor.init(red: CGFloat(arc4random()%256)/CGFloat(255.0), green: CGFloat(arc4random()%256)/CGFloat(255.0), blue: CGFloat(arc4random()%256)/CGFloat(255.0), alpha: 1.0)
        }
    }
    
    public class func RGB(red : NSInteger, green : NSInteger, blue : NSInteger) -> UIColor {
        
        return UIColor.init(red: CGFloat(red)/CGFloat(255.0), green: CGFloat(green)/CGFloat(255.0), blue: CGFloat(blue)/CGFloat(255.0), alpha: 1.0);
    }
    
    public class func RGBA(red : NSInteger, green : NSInteger, blue : NSInteger, alpha : CGFloat) -> UIColor {
        
        return UIColor.init(red: CGFloat(red)/CGFloat(255.0), green: CGFloat(green)/CGFloat(255.0), blue: CGFloat(blue)/CGFloat(255.0), alpha: alpha);
    }
}
