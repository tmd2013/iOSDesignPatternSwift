//
//  User.swift
//  genericity-ex
//
//  Created by ffwang on 2017/6/11.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Cocoa

class User: BaseModel {
    var password : String?
    
    init(username:String,password:String) {
        super.init()
        self.username = username
        
        print("\(String(describing: username))")
        self.password = password
        print("\(String(describing: self.password))")
    }
}
