//
//  UserComputer.swift
//  TemplateMethod
//
//  Created by ffwang on 2017/6/7.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Cocoa

class UserComputer: TemplateComputer {
    override func powerUp() {
        print("用户系统电源")
    }
    
    override func checkHardware() {
        print("用户系统检测硬件")
    }
    
    override func loadOS() {
        print("加载用户系统")
    }
    
    override func login() {
        print("用户名和密码登录")
    }
}
