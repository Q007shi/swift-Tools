//
//  MainTabBarController.swift
//  Swift-Tools
//
//  Created by Ganggang Xie on 2019/1/9.
//  Copyright © 2019年 石富才. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addChildVC(childVC: TestVC(), title: "测试", imageName: "tabBar_Item")
    }
    
    func addChildVC(childVC: UIViewController,title: String,imageName: String) {
        childVC.tabBarItem.title = title
        childVC.tabBarItem.image = UIImage(named: imageName)
        childVC.tabBarItem.selectedImage = UIImage(named: imageName+"_selected")
        let nav: BaseNavigationController = BaseNavigationController(rootViewController:childVC)
        addChild(nav)
    }


}
