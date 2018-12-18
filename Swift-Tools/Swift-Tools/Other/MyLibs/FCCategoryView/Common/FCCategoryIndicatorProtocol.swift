//
//  FCCategoryIndicatorProtocol.swift
//  Swift-Tools
//
//  Created by 石富才 on 2018/12/18.
//  Copyright © 2018年 石富才. All rights reserved.
//

import Foundation
import UIKit

protocol FCCategoryIndicatorProtocol {
    
    
    /// contentScrollView 在进行手势滚动时，处理指示器跟随手势变化 UI 逻辑
    ///
    /// - Parameters:
    ///   - leftCellFrame: <#leftCellFrame description#>
    ///   - rightCellFrame: <#rightCellFrame description#>
    ///   - selectedPosition: <#selectedPosition description#>
    ///   - percent: <#percent description#>
    func fc_contentScrollViewDidScrollWithLeftCellFrame(leftCellFrame: CGRect,rightCellFrame:CGRect,selectedPosition: FCCategoryCellClickedPosition,percent: CGFloat)
    
}
