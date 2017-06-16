//
//  Buttons_2.swift
//  Command-ex
//
//  Created by ffwang on 2017/6/16.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Cocoa

class Buttons_2 {
    private var leftCommand:FF_TMLeftCommand?
    private var rightCommand:FF_TMRightCommand?
    private var buttomCommand:FF_TMButtomCommand?
    private var transformCommand:FF_TMTransformCommand?
    
    init(leftCommand:FF_TMLeftCommand,rightCommand:FF_TMRightCommand,buttomCommand:FF_TMButtomCommand,transformCommand:FF_TMTransformCommand) {
        self.leftCommand = leftCommand
        self.rightCommand = rightCommand
        self.buttomCommand = buttomCommand
        self.transformCommand = transformCommand
    }
    
    func toLeft() {
        self.leftCommand?.execute()
    }
    
    func toRight() {
        self.rightCommand?.execute()
    }
    
    func fastToButtom() {
        self.buttomCommand?.execute()
    }
    
    func transform(){
        self.transformCommand?.execute()
    }

    
}
