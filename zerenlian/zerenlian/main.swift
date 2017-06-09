//
//  main.swift
//  zerenlian
//
//  Created by ffwang on 2017/6/9.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Foundation

let handler1 = FF_ConcreteHandler1()

let handler2 = FF_ConcreteHandler2()

handler1.nextHandler = handler2

handler1.handleRequest(obj: "FF_ConcreteHandler3")



