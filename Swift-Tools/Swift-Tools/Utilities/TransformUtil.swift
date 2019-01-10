//
//  TransformUtil.swift
//  Swift-Tools
//
//  Created by Ganggang Xie on 2019/1/10.
//  Copyright © 2019年 石富才. All rights reserved.
//

import Foundation
import UIKit

class TransformUtil: NSObject {
    
    
    /// 转换过程
    ///
    /// - Parameters:
    ///   - fromValue: 起始值
    ///   - toValue: 目标值
    ///   - percent: 百分比
    /// - Returns: 结果值
    class func transformation(fromValue: CGFloat,toValue: CGFloat,percent: CGFloat) -> CGFloat{
        let minPercent: CGFloat = [1,percent].min()!
        let maxPercent: CGFloat = [0,minPercent].max()!
        return fromValue + (toValue - fromValue)*maxPercent
    }
}


