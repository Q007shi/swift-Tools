//
//  NSString+FCExtension.swift
//  Swift-Tools
//
//  Created by Ganggang Xie on 2019/1/9.
//  Copyright © 2019年 石富才. All rights reserved.
//

import Foundation

extension String{
    
    ///对当前字符，根据正则表达式 regex 进行匹配
    func fc_evaluateWithRegex(regex: String) -> Bool{
        let predicate: NSPredicate = NSPredicate(format: "SELF MATCHES %@", argumentArray: [regex])
        return predicate.evaluate(with: self)
    }
    
}
