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
        
        let view1 = UIView(frame: CGRect(x: 10, y: 100, width: 100, height: 100))
        view1.backgroundColor = UIColor.fc_hexValue(hexValue: 0x999999)
        view.addSubview(view1)
        let view2 = UIView(frame: CGRect(x: 10, y: 300, width: 100, height: 100))
        view2.backgroundColor = UIColor.fc_transformColor(fromColor: .red, toColor: .blue, percent: 0.5)
        view.addSubview(view2)
        
    }
    


}
