//
//  FF_IArray.swift
//  genericity-ex
//
//  Created by ffwang on 2017/6/11.
//  Copyright © 2017年 ffwang. All rights reserved.
//  泛型接口

import Foundation
protocol FF_IArray {
    associatedtype ItemType
    func add(obj:ItemType)
    func remove(index:Int)
    func get(index:Int)->ItemType?
    func removeAll()
    func forEach()
}
