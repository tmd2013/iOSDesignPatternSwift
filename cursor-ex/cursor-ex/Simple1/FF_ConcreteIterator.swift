//
//  FF_ConcreteIterator.swift
//  cursor-ex
//
//  Created by ffwang on 2017/6/12.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import UIKit

class FF_ConcreteIterator<T>: FF_AnyIterator<T> {
    override func next() -> T? {
        if self.hasNext() {
            let result = self.array?[self.index];
            index += 1
            return result
        }
        return nil
    }
    
    override func hasNext() -> Bool {
        return index != self.array?.count
    }
}
