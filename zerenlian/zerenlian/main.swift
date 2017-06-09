//
//  main.swift
//  zerenlian
//
//  Created by ffwang on 2017/6/9.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Foundation


func test1() {
    let handler1 = FF_ConcreteHandler1()
    
    let handler2 = FF_ConcreteHandler2()
    
    handler1.nextHandler = handler2
    
    handler1.handleRequest(obj: "FF_ConcreteHandler2")
}

func test2() {
    let handler1 = FF_AbsConcreteHandler1()
    
    let handler2 = FF_AbsConcreteHandler2()
    let handler3 = FF_AbsConcreteHandler3()
    handler1.nextHandler = handler2
    handler2.nextHandler = handler3
//    let request1 = FF_ConcreteRequest1(obj: "哈哈")
    
    let request2 = FF_ConcreteRequest2(obj: "呵呵")
//    let request3 = FF_ConcreteRequest3(obj: "嘿嘿")
    handler1.handleRequest(request: request2)
}


test2()

