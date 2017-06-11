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

func test3() {
    let array = FF_ArrayList<Int>()
    array.add(obj: 3)
        array.add(obj: 4)
        array.add(obj: 5)
    array.forEach()
}

func test4() {
    let array = FF_ConcreteArray<Int>()
    array.add(obj: 30)
    array.add(obj: 40)
    array.add(obj: 50)
    array.forEach()
}

func test5() {
    let array = FF_ModelArray<BaseModel>()
    let user1 = User()
    user1.username = "aaaa"
    user1.password = "1234"
    array.add(obj: user1)
    let user2 = User()
    user2.username = "bbbb"
    user2.password = "123www4"
    array.add(obj: user2)
    array.forEach()

}

func test6() {
    let stu1 = StudentModel()
    stu1.age = 5
    let stu2 = StudentModel()
    stu2.age = 5
    UserWhere .change(a: stu1, b: stu2)
}



test6()
