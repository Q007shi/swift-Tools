//
//  UIButtom+FCExtension.swift
//  Swift-Tools
//
//  Created by Ganggang Xie on 2019/1/21.
//  Copyright © 2019年 石富才. All rights reserved.
//

import UIKit

extension UIButton{
    
    ///初始化按钮
    convenience init(imageName: String,title: String,state: UIControl.State) {
        self.init()
        setImage(UIImage(named: imageName), for: state)
        setTitle(title, for: state)
        sizeToFit()
    }
}
