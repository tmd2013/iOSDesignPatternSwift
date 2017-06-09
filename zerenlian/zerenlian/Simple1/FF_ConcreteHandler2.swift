//
//  FF_ConcreteHandler2.swift
//  zerenlian
//
//  Created by ffwang on 2017/6/9.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Cocoa

class FF_ConcreteHandler2: FF_Handler {
    override func handleRequest(obj: String?) {
        if obj == "FF_ConcreteHandler2" {
            print("\(String(describing: obj))")
        }else{
            nextHandler?.handleRequest(obj: obj)
        }
    }
}
