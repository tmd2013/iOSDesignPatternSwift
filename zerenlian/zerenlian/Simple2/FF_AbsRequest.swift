//
//  FF_AbsRequest.swift
//  zerenlian
//
//  Created by ffwang on 2017/6/9.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Cocoa

class FF_AbsRequest: NSObject {

    private var obj:String?
    
    init(obj:String) {
        super.init()
        self.obj = obj
    }
    
    //请求级别
    func getRequestLevel() -> Int {
        return 0
    }
    
    //获得请求内容
    func getContent() ->String? {
        return self.obj
    }

}
