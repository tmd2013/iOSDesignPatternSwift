//
//  FF_ArrayList.swift
//  genericity-ex
//
//  Created by ffwang on 2017/6/11.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Cocoa

class FF_ArrayList<T>: AbsArrayList<T> {
    func removeAll() {
        self.array.removeAll()
    }

}
