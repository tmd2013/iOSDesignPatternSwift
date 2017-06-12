//
//  FF_AggregateProtocol.swift
//  cursor-ex
//
//  Created by ffwang on 2017/6/12.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import UIKit

protocol FF_AggregateProtocol {
    associatedtype DataType
    //添加元素
    func add(obj:DataType)
    //删除元素
    func remove(index:Int)
    //获取迭代器
    func iterator() -> FF_AnyIterator<DataType>
}
