//
//  FirstViewController.swift
//  RHDrawerDemo
//
//  Created by 郭人豪 on 2017/6/27.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

import UIKit

class FirstViewController: RHViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(title: "左抽屉", style: .done, target: self, action: #selector(clickLeftItem(item:)))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(title: "右抽屉", style: .done, target: self, action: #selector(clickRightItem(item:)))
        
        let button = UIButton.init(frame: CGRect.init(x: 0, y: 0, width: 100, height: 50))
        button.center = CGPoint.init(x: self.view.bounds.size.width / 2, y: self.view.bounds.size.height / 2)
        button.backgroundColor = UIColor.random
        button.addTarget(self, action: #selector(clickButton(sender:)), for: .touchUpInside)
        self.view.addSubview(button)
    }

    func clickLeftItem(item: UINavigationItem) {
        
        (UIApplication.shared.delegate as! AppDelegate).drawerController?.showLeftViewController(animated: true)
    }
    func clickRightItem(item: UINavigationItem) {
        
        (UIApplication.shared.delegate as! AppDelegate).drawerController?.showRightViewController (animated: true)
    }
    
    
    func clickButton(sender: UIButton) {
    
        let detail = SecondViewController()
        self.navigationController?.pushViewController(detail, animated: true)
    }

}
