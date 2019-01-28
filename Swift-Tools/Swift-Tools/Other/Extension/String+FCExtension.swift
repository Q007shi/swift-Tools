//
//  NSString+FCExtension.swift
//  Swift-Tools
//
//  Created by Ganggang Xie on 2019/1/9.
//  Copyright © 2019年 石富才. All rights reserved.
//

//https://www.jianshu.com/p/b23f0ac70826
//https://www.jianshu.com/p/f03bf112840c
//https://blog.csdn.net/nick_since2016/article/details/79218778

import Foundation

///正则表达式
extension String{
    
    ///对当前字符，根据正则表达式 regex 进行匹配
    func fc_evaluateWithRegex(regex: String) -> Bool{
        let predicate: NSPredicate = NSPredicate(format: "SELF MATCHES %@", argumentArray: [regex])
        return predicate.evaluate(with: self)
    }
    
}

///字符串截取
extension String{
    
    func fc_subString(range: Range<Int>) -> String{
        var lower = range.lowerBound
        var upper = range.upperBound
        if lower > upper{
            (lower,upper) = (upper,lower)
        }
        return ""
    }
    
}
