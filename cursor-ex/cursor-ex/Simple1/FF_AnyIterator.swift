//
//  FF_AnyIterator.swift
//  cursor-ex
//
//  Created by ffwang on 2017/6/12.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import UIKit

class FF_AnyIterator<T>: FF_IteratorProtocol {
    typealias ItemType = T
    
    var array:Array<T>?
    //下标:用于记录当前遍历位置
    var index:Int = 0
    
    init(array:Array<T>) {
        self.array = array
    }
    
    func next() -> T? {
        return nil
    }
    
    func hasNext() -> Bool {
        return false
    }
}
