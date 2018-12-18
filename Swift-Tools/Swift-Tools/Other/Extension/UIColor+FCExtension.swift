//
//  UIColor+FCExtension.swift
//  Swift-Tools
//
//  Created by 石富才 on 2018/12/17.
//  Copyright © 2018年 石富才. All rights reserved.
//

import Foundation
import UIKit

extension UIColor{
    
    ///获取当前颜色的 RGBA([0,1])
    func rgb() -> (R: CGFloat,G: CGFloat,B: CGFloat,A:CGFloat) {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b:CGFloat = 0
        var a:CGFloat = 0
        self.getRed(&r, green: &g, blue: &b, alpha: &a)
        return (r,g,b,a)
    }
    
}
