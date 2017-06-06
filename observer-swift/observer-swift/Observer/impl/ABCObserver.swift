//
//  ABCObserver.swift
//  observer-swift
//
//  Created by nonoking on 2017/6/5.
//  Copyright © 2017年 nonoking. All rights reserved.
//

import UIKit

class ABCObserver: Observer {
    func update(o: Observable, msg: Any?) {
        if msg != nil {
            print("abc收到了消息,消息内容是：\(String(describing: msg!))")
        }
    }
}
