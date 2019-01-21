//
//  TestVC.swift
//  Swift-Tools
//
//  Created by Ganggang Xie on 2019/1/9.
//  Copyright © 2019年 石富才. All rights reserved.
//

import UIKit

class TestVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "测试"
        view.backgroundColor = UIColor.white
        
        let btn = UIButton(imageName: "tabBar_Item", title: "124", state: .normal)
        btn.backgroundColor = .red;
        btn.center = view.center
        view.addSubview(btn)
        
    }
    


}
