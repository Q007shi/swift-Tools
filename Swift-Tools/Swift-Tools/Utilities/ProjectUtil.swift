//
//  ProjectUtil.swift
//  Swift-Tools
//
//  Created by Ganggang Xie on 2019/1/9.
//  Copyright © 2019年 石富才. All rights reserved.
//

import UIKit

///项目相关
class ProjectUtil: NSObject {
    
    ///项目名称
    class func appName() -> String {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleName") as! String
    }
    ///项目发布名称
    class func appDisplayName() -> String{
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleDisplayName") as! String
    }
    ///CFBundleIdentifier,APP 唯一标识符
    class func appIdentifier() -> String{
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleIdentifier") as! String
    }
    ///CFBundleShortVersionString，APP 版本号
    class func appVersion() -> String{
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
    }

}
