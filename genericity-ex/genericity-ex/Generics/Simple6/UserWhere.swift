//
//  UserWhere.swift
//  genericity-ex
//
//  Created by ffwang on 2017/6/11.
//  Copyright © 2017年 ffwang. All rights reserved.
//  泛型Where语句

import Cocoa

class WBaseModel: NSObject {
    
    var age:Int = 100
    
}

//学生
class StudentModel: WBaseModel {
    
}

class UserWhere: NSObject {
    //where语句实现
    class func change<T>(a:T,b:T) where T : WBaseModel {
        if a.age == b.age {
            print("年龄相等")
        }else{
            print("不适合")
        }
    }
}
