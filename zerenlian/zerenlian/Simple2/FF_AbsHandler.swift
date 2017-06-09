//
//  FF_AbsHandler.swift
//  zerenlian
//
//  Created by ffwang on 2017/6/9.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Cocoa

class FF_AbsHandler: NSObject {
    var nextHandler : FF_AbsHandler?
    
    //参数：不是具体的请求对象，而是一个抽象请求对象
    final func handleRequest(request:FF_AbsRequest) {
        //Log统计
        //异常统计
        if request.getRequestLevel() == getHandleLevel() {
            //处理级别和请求级别相同，说明这个请求是我需要处理
            self.handle(request: request)
        } else {
            //不满足要求，交给下一个处理节点(传递给下一个)
            self.nextHandler?.handleRequest(request: request)
        }
    }
    
    func getHandleLevel() -> Int {
        return 0
    }
    
    func handle(request:FF_AbsRequest) {
        
    }

    
}
