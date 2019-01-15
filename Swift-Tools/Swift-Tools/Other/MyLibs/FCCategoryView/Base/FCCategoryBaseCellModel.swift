//
//  FCCategoryBaseCellModel.swift
//  Swift-Tools
//
//  Created by 石富才 on 2018/12/17.
//  Copyright © 2018年 石富才. All rights reserved.
//

import UIKit

class FCCategoryBaseCellModel: NSObject {
    ///位置
    var index: Int
    ///是否选中
    var selected: Bool
    
    private var _cellWidth: Float
    /// cell 的宽度
    var cellWidth: Float{
        get{
            if cellWidthZoomEnabled {
                return self.cellWidth*cellWidthZoomScale
            }
            return _cellWidth;
        }
        set{
            _cellWidth = newValue
        }
    }
    ///cell 之间的间距
    var cellSpacing: Float
    ///cell 是否具有放大效果
    var cellWidthZoomEnabled: Bool
    /// cell 放大比例
    var cellWidthZoomScale: Float
    
    override init() {
        index = 0
        selected = false;
        _cellWidth = 0
        cellSpacing = 0
        cellWidthZoomEnabled = false
        cellWidthZoomScale = 0
        super.init()
    }
    

}
