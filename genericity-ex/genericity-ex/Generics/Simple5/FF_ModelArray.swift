//
//  FF_ModelArray.swift
//  genericity-ex
//
//  Created by ffwang on 2017/6/11.
//  Copyright © 2017年 ffwang. All rights reserved.
//  泛型约束

import Cocoa

class FF_ModelArray<T:BaseModel>: FF_IArray {
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
            
            let user = item as! User
            print(item.username ?? "无名氏")
            print(user.password ?? "无密码")
        }
        
    }
}
