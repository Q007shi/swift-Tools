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
    func fc_rgb() -> (R: CGFloat,G: CGFloat,B: CGFloat,A:CGFloat) {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b:CGFloat = 0
        var a:CGFloat = 0
        getRed(&r, green: &g, blue: &b, alpha: &a)
        return (r,g,b,a)
    }
    ///十六进制色值(0x000000) 转 UIColor
    func fc_hexValue(hexValue: Int32) -> UIColor{
        let r: CGFloat = (CGFloat)((hexValue & 0xff0000) >> 16)
        let g: CGFloat = (CGFloat)((hexValue & 0x00ff00) >> 8)
        let b: CGFloat = (CGFloat)(hexValue & 0x0000ff)
        return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1)
    }
    ///十六进制字符串("0xffffff、#ffffff") 转 UIColor
    func fc_hexValueString(hexValueString: String) -> UIColor{
        if hexValueString.isEmpty{ return UIColor.clear }
        if !hexValueString.fc_evaluateWithRegex(regex: "^(0x|#)(([a-zA-Z0-9]{3})|([a-zA-Z0-9]{6}))") { return UIColor.clear }
        
        return UIColor.clear
    }
    private func _colorComponent(hexStr: String,start: Int,length: Int) -> CGFloat{
        return  1;
    }
    
}
