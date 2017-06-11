//
//  FF_ConcreteArray.swift
//  genericity-ex
//
//  Created by ffwang on 2017/6/11.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Cocoa

class FF_ConcreteArray<T>: FF_IArray {
    typealias ItemType = T
    var array = Array<T>()
    
    func add(obj:ItemType){
        self.array.append(obj)
    }
    func remove(index:Int){
        self.array.remove(at: index)
    }
    func get(index:Int)->T?{
        return self.array[index]
    }
    func removeAll(){
        self.array.removeAll()
    }
    func forEach(){
        for item in self.array {
            print(item)
        }

    }
}
