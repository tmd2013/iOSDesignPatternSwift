//
//  main.swift
//  genericity-ex
//
//  Created by ffwang on 2017/6/9.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Foundation

func test1() {
    let test1 = GenericsTest()
    
    var a = 3
    var b = 6
    
    
    print("交换前:\na = \(a)\nb = \(b)")
    test1.change(a: &a, b: &b)
    
    print("交换后:\na = \(a)\nb = \(b)")
}

func test2() {
//    let array = ArrayList<Int>()
//    array.add(obj: 3)
//    array.add(obj: 4)
//    array.add(obj: 5)
    let array = ArrayList<Double>()
    array.add(obj: 3.3)
    array.add(obj: 4.3)
    array.add(obj: 5.3)
    array.forEach()
}


test2()
