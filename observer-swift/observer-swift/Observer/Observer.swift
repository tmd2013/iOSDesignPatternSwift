//
//  Observer.swift
//  observer-swift
//
//  Created by nonoking on 2017/6/5.
//  Copyright © 2017年 nonoking. All rights reserved.
//

import Foundation
//观察者
protocol Observer {
    
    //收到通知
    func update(o:Observable,msg:Any?)
    
}
