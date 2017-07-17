//
//  AppRoot.swift
//  RHDrawerDemo
//
//  Created by 郭人豪 on 2017/6/27.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

import UIKit

class AppRoot: NSObject {

    class func setRoot(_ window: UIWindow?, _ appdelegate: AppDelegate) {
        
        window?.backgroundColor = UIColor.white
        let main = RHTabBarController()
        let left = LeftViewController()
        let right = RightViewController()
        let rootVC = RHDrawerController.init(mainVC: main, leftVC: left, rightVC: right)
        appdelegate.drawerController = rootVC
        window?.rootViewController = rootVC
        window?.makeKeyAndVisible()
    }
}
