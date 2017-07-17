//
//  RHNavigationController.swift
//  RHDrawerDemo
//
//  Created by 郭人豪 on 2017/6/27.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

import UIKit

class RHNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.interactivePopGestureRecognizer?.delegate = nil;
        setNavigateion();
    }

    func setNavigateion() {
        
        //设置导航栏背景颜色
        (UINavigationBar.appearance()).barTintColor = Color_Nav
        
        //设置导航栏中间的标题
        let attributes = NSMutableDictionary()
        //字体大小，
//        attributes[NSFontAttributeName] = UIFont.systemFont(ofSize: 20);
        //字体颜色
        attributes[NSForegroundColorAttributeName] = UIColor.white;
        (UINavigationBar.appearance()).titleTextAttributes = attributes as? [String : Any]
        
        (UINavigationBar.appearance()).shadowImage = UIImage.init()
        //设置导航栏不透明
        (UINavigationBar.appearance()).isTranslucent = false
        //设置导航栏左右item颜色
        (UINavigationBar.appearance()).tintColor = UIColor.white
    }
    
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if self.childViewControllers.count > 0 {
            
            viewController.hidesBottomBarWhenPushed = true
            viewController.navigationItem.backBarButtonItem = UIBarButtonItem.init(title: "", style: UIBarButtonItemStyle.done, target: self, action: #selector(back(backBarButtonItem:)))
        }
        super.pushViewController(viewController, animated: animated);
    }
    
    func back(backBarButtonItem: UIBarButtonItem) {
        
        self.popViewController(animated: true)
    }

}
