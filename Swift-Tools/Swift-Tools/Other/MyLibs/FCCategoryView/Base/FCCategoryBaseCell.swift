//
//  FCCategoryBaseCell.swift
//  Swift-Tools
//
//  Created by 石富才 on 2018/12/17.
//  Copyright © 2018年 石富才. All rights reserved.
//

import UIKit

class FCCategoryBaseCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initializeView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var cellModel: FCCategoryBaseCellModel?
    ///子类重写该方法，初始化 View
    func initializeView() {
        
    }
    ///刷新数据
    func reloadData(cellModel: FCCategoryBaseCellModel) {
        self.cellModel = cellModel
    }
    
    
    
}

