//
//  TestVC.swift
//  Swift-Tools
//
//  Created by Ganggang Xie on 2019/1/9.
//  Copyright © 2019年 石富才. All rights reserved.
//

import UIKit
import Alamofire

class TestVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "测试"
        view.backgroundColor = UIColor.white
        
        let btn = UIButton(imageName: "tabBar_Item", title: "124", state: .normal)
        btn.backgroundColor = .red;
        btn.center = view.center
        view.addSubview(btn)
        
        
        
        getRequest()
        
    }
    
    ///https://www.jianshu.com/p/f8c3adb056cf
    //MAKR: 网络请求
    func getRequest(){
        Alamofire.request("https://api.github.com/repos/bewils/IWantTheGreenOne").responseJSON { (response) in
            response.request//原始的 URL 请求
            print(response.request?.httpMethod)//获取请求方式
            response.response//HTTP URL 响应
            response.data//服务器返回的数据
            response.result//响应序列化结果，在这个闭包里，存储的是 JSON 数据
            if let json = response.result.value{
                print("JSON : \(json)")
            }
        }
    }

}



