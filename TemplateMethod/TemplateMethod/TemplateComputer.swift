//
//  TemplateComputer.swift
//  TemplateMethod
//
//  Created by ffwang on 2017/6/7.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Cocoa

class TemplateComputer: NSObject {

    override init() {
        super.init()
    }
    
    //按下电源
    func powerUp() {
        print("按下电源键")
    }
    
    //检测硬件
    func checkHardware() {
        print("检测硬件")
    }
    
    //加载系统
    func loadOS(){
        print("加载操作系统")
    }
    
    //登录系统
    func login() {
        print("登录系统")
    }
    
   
    //final：表示子类不允许重写父类方法
    final func startup() {
        self.powerUp()
        self.checkHardware()
        self.loadOS()
        self.login()
        print("开机了...")
    }
}
