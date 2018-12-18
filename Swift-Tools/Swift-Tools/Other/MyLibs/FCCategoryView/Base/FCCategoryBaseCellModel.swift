//
//  FCCategoryBaseCellModel.swift
//  Swift-Tools
//
//  Created by 石富才 on 2018/12/17.
//  Copyright © 2018年 石富才. All rights reserved.
//

import UIKit

class FCCategoryBaseCellModel: NSObject {
    
    var index: Int
    var selected: Bool
    
    private var _cellWidth: CGFloat
    var cellWidth: CGFloat{
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
    var cellSpacing: CGFloat
    var cellWidthZoomEnabled: Bool
    var cellWidthZoomScale: CGFloat
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
