//
//  FF_AbsConcreteHandler1.swift
//  zerenlian
//
//  Created by ffwang on 2017/6/9.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Cocoa

class FF_AbsConcreteHandler1: FF_AbsHandler {

    override func getHandleLevel() -> Int {
        return 1;
    }
    override func handle(request: FF_AbsRequest) {
        print("当前处理了: FF_AbsConcreteHandler1")
        print("处理请求是：\(request.getContent()!)")
    }
}
