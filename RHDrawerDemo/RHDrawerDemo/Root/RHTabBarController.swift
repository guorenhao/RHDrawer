//
//  RHTabBarController.swift
//  RHDrawerDemo
//
//  Created by 郭人豪 on 2017/6/27.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

import UIKit

class RHTabBarController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.delegate = self
        setTabBar()
        setTabBarControllers()
    }

    // MARK: - 设置tabBar的属性
    func setTabBar() {
        
        // 设置 TabBarItem
        // 未选中状态
        let normalAttribute = NSMutableDictionary()
        normalAttribute.setValue(Color_TabBarItemN, forKey: NSForegroundColorAttributeName)
        (UITabBarItem.appearance()).setTitleTextAttributes(normalAttribute as? [String : Any], for: UIControlState.normal)
        // 选中状态
        let selectAttribute = NSMutableDictionary()
        selectAttribute[NSForegroundColorAttributeName] = Color_TabBarItemS
        (UITabBarItem.appearance()).setTitleTextAttributes(selectAttribute as? [String : Any], for: UIControlState.selected)
        
        // 设置背景色
        (UITabBar.appearance()).barTintColor = Color_TabBar
        // 设置不透明
        (UITabBar.appearance()).isTranslucent = false
    }
    
    // MARK: - 设置tabBar的VC
    func setTabBarControllers() {
        
        let home = FirstViewController()
        let second = SecondViewController()
        let third = ThirdViewController()
        let mine = FourthViewController()
        
        let controllerArr : NSArray = [home, second, third, mine]
        let titleArr : NSArray = ["首页", "Second", "Third", "我的"]
        let imageArr : NSArray = ["", "", "", ""]
        let selectImageArr : NSArray = ["", "", "", ""]
        
        for i in 0...3 {
            
            setNavController(viewController: controllerArr.object(at: i) as! UIViewController, title: titleArr.object(at: i) as! String, image: imageArr.object(at: i) as! String, selectImage: selectImageArr.object(at: i) as! String)
        }
    }
    
    func setNavController(viewController: UIViewController, title: String, image: String, selectImage: String) {
        
        let nav = RHNavigationController(rootViewController: viewController)
        viewController.title = title
        let img = UIImage(named: image);
        let selectImg = UIImage(named: selectImage)
        nav.tabBarItem.image = img?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        nav.tabBarItem.selectedImage = selectImg?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        self.addChildViewController(nav)
    }
    
    // MARK: - tabBarController delegate
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        
        if viewController.title == "我的" {
            
            print("点击了我的！")
        }
        return true
    }

}
