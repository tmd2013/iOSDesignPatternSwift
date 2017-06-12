//
//  FF_ConcreteAggegate.swift
//  cursor-ex
//
//  Created by ffwang on 2017/6/12.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import UIKit

class FF_ConcreteAggegate<T>: FF_AggregateProtocol {
    typealias DataType = T
    
    private var array = Array<T>()
    func add(obj:DataType)
    {
        self.array.append(obj)
    }
    //删除元素
    func remove(index:Int){
        self.array.remove(at: index)
    }
    //获取迭代器
    func iterator() -> FF_AnyIterator<DataType>{
        return FF_ConcreteIterator<T>(array: self.array)
    }
}
