//
//  AbsArrayList.swift
//  genericity-ex
//
//  Created by ffwang on 2017/6/11.
//  Copyright © 2017年 ffwang. All rights reserved.
//  继承泛型

import Cocoa

class AbsArrayList<T>: NSObject {
    //array数值
    var array = Array<T>()
    
    //添加元素
    func add(obj:T) {
        self.array.append(obj)
    }
    
    //获得指定元素
    func get(index:Int) -> T {
        return self.array[index]
    }
    
    func remove(index:Int) {
        self.array.remove(at: index)
    }
    
    //打印数组元素
    func forEach(){
        for item in array {
            print(item)
        }
    }
}

//extension AbsArrayList{
//    func removeAll() {
//        self.array.removeAll()
//    }
//}
