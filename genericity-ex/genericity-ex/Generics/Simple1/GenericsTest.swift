//
//  GenericsTest.swift
//  genericity-ex
//
//  Created by ffwang on 2017/6/9.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Cocoa

class GenericsTest: NSObject {
    func change<T>(a:inout T,b:inout T) {
        let c = a
        a = b
        b = c
    }
}
