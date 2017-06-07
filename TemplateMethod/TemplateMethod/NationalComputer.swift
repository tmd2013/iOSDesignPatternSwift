//
//  NationalComputer.swift
//  TemplateMethod
//
//  Created by ffwang on 2017/6/7.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Cocoa

class NationalComputer: TemplateComputer {

    override func powerUp() {
        print("国防系统电源")
    }
    
    override func checkHardware() {
        print("国防系统检测硬件")
    }
    
    override func loadOS() {
        print("加载国防系统")
    }
    
    override func login() {
        print("登录需要人脸识别+指纹识别+用户名+密码登录")
    }
}
