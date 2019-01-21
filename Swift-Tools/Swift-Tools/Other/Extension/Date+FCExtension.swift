//
//  NSDate+FCExtension.swift
//  Swift-Tools
//
//  Created by 石富才 on 2019/1/15.
//  Copyright © 2019年 石富才. All rights reserved.
//

import Foundation

extension Date{
    
    ///将当前时间转换为 YYYY-MM-dd HH:mm:ss
    static func fc_nowDate2String() -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm:ss"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 8*3600)//东 8 区，北京时间
        dateFormatter.calendar = Calendar(identifier: Calendar.Identifier.gregorian)
        return dateFormatter.string(from: Date())
    }
    ///将当前时间转换为制定格式字符串
    static func fc_nowDate2String(dateFormat: String) -> String{
        if dateFormat.isEmpty { return "" }
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = dateFormat
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 8*3600)//东 8 区，北京时间
        dateFormatter.calendar = Calendar(identifier: Calendar.Identifier.gregorian)
        return dateFormatter.string(from: Date())
    }
    ///根据 dateFormat 时间格式，将时间字符串 dateString 转换为 NSDate
    static func fc_parseDate(dateFormat: String,dateString: String) -> Date?{
        if dateFormat.isEmpty || dateString.isEmpty {return nil }
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = dateFormat
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 8*3600)//东 8 区，北京时间
        dateFormatter.calendar = Calendar(identifier: Calendar.Identifier.gregorian)
        return dateFormatter.date(from: dateString)
    }
    ///将当前时间转换为毫秒时间戳
    static func fc_millisecondTimeStamp() -> String{
        let date = Date(timeIntervalSinceNow: 0)
        let timeInterval = date.timeIntervalSince1970*1000//1m = 1000ms。是精确到毫秒，不乘就是精确到秒
        return String(format: "%.0f", arguments: [timeInterval])
    }
}
