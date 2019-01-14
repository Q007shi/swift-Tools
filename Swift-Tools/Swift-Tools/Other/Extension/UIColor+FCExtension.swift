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
    static func fc_hexValue(hexValue: Int32) -> UIColor{
        let r: CGFloat = (CGFloat)((hexValue & 0xff0000) >> 16)
        let g: CGFloat = (CGFloat)((hexValue & 0x00ff00) >> 8)
        let b: CGFloat = (CGFloat)(hexValue & 0x0000ff)
        return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1)
    }
    ///十六进制字符串("0xffffff、#ffffff") 转 UIColor
    static func fc_hexValueString(hexValueString: String) -> UIColor{
        if hexValueString.isEmpty{ return UIColor.clear }
        var hexValueStr = String(hexValueString)
        if !hexValueStr.fc_evaluateWithRegex(regex: "^(0x|#)(([a-zA-Z0-9]{3})|([a-zA-Z0-9]{6}))") { return UIColor.clear }
        if hexValueStr.hasPrefix("0x") {
            hexValueStr = hexValueStr.replacingOccurrences(of: "0x", with: "")
        }else if hexValueStr.hasPrefix("#"){
            hexValueStr = hexValueStr.replacingOccurrences(of: "#", with: "")
        }
        let red,blue,green,alpha: CGFloat
        switch hexValueStr.count {
        case 3:
            red = _colorComponent(hexStr: hexValueStr, start: 0, length: 1)
            green = _colorComponent(hexStr: hexValueStr, start: 1, length: 1)
            blue = _colorComponent(hexStr: hexValueStr, start: 2, length: 1)
            alpha = 1.0
        case 4:
            red = _colorComponent(hexStr: hexValueStr, start: 0, length: 1)
            green = _colorComponent(hexStr: hexValueStr, start: 1, length: 1)
            blue = _colorComponent(hexStr: hexValueStr, start: 2, length: 1)
            alpha = _colorComponent(hexStr: hexValueStr, start: 3, length: 1)
        case 6:
            red = _colorComponent(hexStr: hexValueStr, start: 0, length: 2)
            green = _colorComponent(hexStr: hexValueStr, start: 2, length: 2)
            blue = _colorComponent(hexStr: hexValueStr, start: 4, length: 2)
            alpha = 1.0
        case 8:
            red = _colorComponent(hexStr: hexValueStr, start: 0, length: 2)
            green = _colorComponent(hexStr: hexValueStr, start: 2, length: 2)
            blue = _colorComponent(hexStr: hexValueStr, start: 4, length: 2)
            alpha = _colorComponent(hexStr: hexValueStr, start: 6, length: 2)
        default:
            red = 0;
            green = 0;
            blue = 0;
            alpha = 0;
        }
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    ///
    private static func _colorComponent(hexStr: String,start: Int,length: Int) -> CGFloat{
        var subStr: String = String(hexStr[String.Index(encodedOffset: start) ..< String.Index(encodedOffset: start+length)])
        if subStr.count == 1{
            subStr = subStr + subStr
        }
        let scanner = Scanner(string: subStr)
        scanner.scanLocation = 0
        var value: UInt64 = 0
        scanner.scanHexInt64(&value)
        let maxV: CGFloat = 255.0
        return  CGFloat(CGFloat(value)/maxV);
    }
    
    ///颜色渐变
    static func fc_transformColor(fromColor: UIColor,toColor: UIColor,percent: CGFloat) -> UIColor{
        return fc_transformColor(fromColor: fromColor, toColor: toColor, percent: percent, alpha: 1)
    }
    ///颜色渐变
    static func fc_transformColor(fromColor: UIColor,toColor: UIColor,percent: CGFloat,alpha: CGFloat) -> UIColor{
        let minP = [1,percent].min()!
        let percentV = [0,minP].max()!
        let fromTuples = fromColor.fc_rgb()
        let toTuples = toColor.fc_rgb()
        return UIColor(red: fromTuples.R + (toTuples.R - fromTuples.R) * percentV, green: fromTuples.G + (toTuples.G - fromTuples.G) * percentV, blue: fromTuples.B + (toTuples.B - fromTuples.B) * percentV, alpha: alpha)
    }
    
}
