//
//  Buttons_3.swift
//  Command-ex
//
//  Created by ffwang on 2017/6/16.
//  Copyright © 2017年 ffwang. All rights reserved.
//  增加撤销操作

import Cocoa

class Buttons_3 {
    private var tm: FF_TetrisMachine?
    private var leftCommand:FF_TMLeftCommand?
    private var rightCommand:FF_TMRightCommand?
    private var buttomCommand:FF_TMButtomCommand?
    private var transformCommand:FF_TMTransformCommand?
    
    private var commandArray = Array<FF_TMCommandProtocol>()
    
    init(tm: FF_TetrisMachine,leftCommand:FF_TMLeftCommand,rightCommand:FF_TMRightCommand,buttomCommand:FF_TMButtomCommand,transformCommand:FF_TMTransformCommand) {
        self.tm = tm
        self.leftCommand = leftCommand
        self.rightCommand = rightCommand
        self.buttomCommand = buttomCommand
        self.transformCommand = transformCommand
    }
    
    func toLeft() {
        addCommand(command: self.leftCommand!)
        self.leftCommand?.execute()
    }
    
    func toRight() {
        addCommand(command: self.rightCommand!)
        self.rightCommand?.execute()
    }
    
    func fastToButtom() {
        addCommand(command: self.buttomCommand!)
        self.buttomCommand?.execute()
    }
    
    func transform(){
        addCommand(command: self.transformCommand!)
        self.transformCommand?.execute()
    }
    
   private func addCommand(command:FF_TMCommandProtocol) {
        self.commandArray.append(command)
    }
    
    func undo() {
        if self.commandArray.count > 0 {
            print("撤销了以下操作：")
            self.commandArray.removeLast().execute()
        }
    }
    
    func undoAll() {
        for command in self.commandArray {
            command.execute()
        }
        self.commandArray.removeAll()
    }
    
    func recover() {
        for command in self.commandArray {
            command.execute()
        }
    }
}
