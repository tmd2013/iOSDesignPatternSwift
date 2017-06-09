//
//  FF_Handler.swift
//  zerenlian
//
//  Created by ffwang on 2017/6/9.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Cocoa

class FF_Handler: NSObject {

    var nextHandler: FF_Handler?
    
    func handleRequest(obj:String?) {
        print("抽象处理类\(obj!)");
    }
}
