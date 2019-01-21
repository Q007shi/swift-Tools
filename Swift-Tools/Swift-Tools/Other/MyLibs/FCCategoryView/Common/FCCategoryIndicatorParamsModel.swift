//
//  FCCategoryIndicatorParamsModel.swift
//  Swift-Tools
//
//  Created by 石富才 on 2019/1/15.
//  Copyright © 2019年 石富才. All rights reserved.
//

import UIKit

class FCCategoryIndicatorParamsModel: NSObject {
    ///当前选中的 index
    var selectedIndex: Int?
    ///当前选中 cell 的 frame
    var selectedCellFrame: CGRect?
    ///正在过度的两个 cell，相对位置在左边的 cell 的 index
    var leftIndex: Int?
    ///正在过度的两个 cell，相对位置在左边的 cell 的 frame
    var leftCellFrame: CGRect?
    ///正在过度的两个 cell，相对位置在右边的 cell 的 index
    var rightIndex: Int?
    ///正在过度的两个 cell，相对位置在右边的 cell 的 frame
    var rightCellFrame: CGRect?
    ///正在过度的两个 cell，从左到右的百分比
    var percent: CGFloat?
    ///之前选中的 index
    var lastSelectedIndex: Int?
    ///YES:点击选中；NO：滚动选中
    var isClicked: Bool?
    

}
