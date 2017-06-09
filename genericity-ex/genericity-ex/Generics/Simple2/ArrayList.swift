//
//  ArrayList.swift
//  genericity-ex
//
//  Created by ffwang on 2017/6/9.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Cocoa

class ArrayList<T> {
    //array数值
    private var array = Array<T>()
    
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
