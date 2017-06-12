//
//  FF_IteratorProtocol.swift
//  cursor-ex
//
//  Created by ffwang on 2017/6/12.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import UIKit

protocol FF_IteratorProtocol {
    associatedtype ItemType
    //下一个元素
    func next() -> ItemType?
    //是否有元素
    func hasNext() -> Bool
}
