//
//  PathUtil.swift
//  Swift-Tools
//
//  Created by Ganggang Xie on 2019/1/9.
//  Copyright © 2019年 石富才. All rights reserved.
//

import Foundation

enum PathUtilError: Error{
    case ErrorException(String)
}

///路径相关
class PathUtil: NSObject {
    
    ///app沙盒中 Documents 文件目录
    class func documentsURL() -> URL{
        return FileManager.default.urls(for: FileManager.SearchPathDirectory.documentDirectory, in: FileManager.SearchPathDomainMask.userDomainMask).last!
    }
    class func documentsPath() -> String{
        return NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true).last!
    }
    ///app沙盒中 Caches 文件目录
    class func cachesURL() -> URL{
        return FileManager.default.urls(for: FileManager.SearchPathDirectory.cachesDirectory, in: FileManager.SearchPathDomainMask.userDomainMask).last!
    }
    class func cachesPath() -> String{
        return NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.cachesDirectory, FileManager.SearchPathDomainMask.userDomainMask, true).last!
    }
    ///app沙盒中 library 文件目录
    class func libraryURL() -> URL{
        return FileManager.default.urls(for: FileManager.SearchPathDirectory.libraryDirectory, in: FileManager.SearchPathDomainMask.userDomainMask).last!
    }
    class func libraryPath() -> String{
        return NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.libraryDirectory, FileManager.SearchPathDomainMask.userDomainMask, true).last!
    }
    //app沙盒中 临时 文件目录
    class func temporaryPath() -> String{
        return NSTemporaryDirectory();
    }
    
    ///根据文件路径获取文件属性
    class func fileAttributesAtPath(filePath: String) -> NSDictionary?{
        if filePath.isEmpty{ return nil }
        let fileManager: FileManager = FileManager.default
        if fileManager.fileExists(atPath: filePath){
            return try? fileManager.attributesOfItem(atPath: filePath) as NSDictionary
        }else{
            return nil
        }
    }
    
    ///文件复制
    class func copyFile(sourceFilePath: String,destinationPath: String) throws -> Bool{
        //
        if sourceFilePath.isEmpty{
            print("sourceFilePath 不能为空")
            throw PathUtilError.ErrorException("sourceFilePath 不能为空")
        }else if FileManager.default.fileExists(atPath: sourceFilePath) == false{
            print("sourceFilePath 不存在")
            throw PathUtilError.ErrorException("sourceFilePath 不存在")
        }
        //
        if destinationPath.isEmpty{
            print("destinationPath 不能为空")
            throw PathUtilError.ErrorException("destinationPath 不能为空")
        }
        //读取文件
        let sourceData: Data = try Data(contentsOf: URL(fileURLWithPath: sourceFilePath))
        FileManager.default.createFile(atPath: destinationPath, contents: sourceData, attributes: nil)
        return true
    }
    ///文件剪切
    class func cutFile(sourceFilePath: String,destinationPath: String) throws -> Bool{
        //
        if sourceFilePath.isEmpty{
            print("sourceFilePath 不能为空")
            throw PathUtilError.ErrorException("sourceFilePath 不能为空")
        }else if FileManager.default.fileExists(atPath: sourceFilePath) == false{
            print("sourceFilePath 不存在")
            throw PathUtilError.ErrorException("sourceFilePath 不存在")
        }
        //
        if destinationPath.isEmpty{
            print("destinationPath 不能为空")
            throw PathUtilError.ErrorException("destinationPath 不能为空")
        }
        try FileManager.default.moveItem(atPath: sourceFilePath, toPath: destinationPath)
        return true
    }

}
