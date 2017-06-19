//
//  main.swift
//  Command-ex
//
//  Created by ffwang on 2017/6/13.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Foundation

func testSimple1() {
    let computerReceiver = FF_MacComputer()
    let startupCommand = FF_MacStartupCommand(receiver: computerReceiver)
    let shutdownCommand = FF_MacShutdownCommand(receiver: computerReceiver)
    
    let invoker = FF_MacInvoker(startupCommand: startupCommand, shutdownCommand: shutdownCommand)
    
    invoker.startup()
    
    invoker.shutdown()
}

func testSimple2() {
    let tm = FF_TetrisMachine()
    
    let leftCommand = FF_TMLeftCommand(tm: tm)
    let rightCommand = FF_TMRightCommand(tm: tm)
    let buttomCommand = FF_TMButtomCommand(tm: tm)
    let transformCommand = FF_TMTransformCommand(tm: tm)
    let button = Buttons_2(leftCommand: leftCommand, rightCommand: rightCommand, buttomCommand: buttomCommand, transformCommand: transformCommand)
    button.toLeft()
    button.toRight()
    button.fastToButtom()
    button.transform()
}

func testSimple3() {
    let tm = FF_TetrisMachine()
    
    let leftCommand = FF_TMLeftCommand(tm: tm)
    let rightCommand = FF_TMRightCommand(tm: tm)
    let buttomCommand = FF_TMButtomCommand(tm: tm)
    let transformCommand = FF_TMTransformCommand(tm: tm)
    let button = Buttons_3(tm: tm,leftCommand: leftCommand, rightCommand: rightCommand, buttomCommand: buttomCommand, transformCommand: transformCommand)
    button.toLeft()
    button.toRight()
    button.fastToButtom()
    button.transform()
    
    button.recover()
}

func testSimple4() {
    let tm = FF_TetrisMachine()
    
    let invoker = Buttons_4(tm: tm)
    
    invoker.toRight()
    
    invoker.transform()
    
    invoker.undo()
    
}

func testSimple6() {
    let tm = FF_TetrisMachine()
    
    //请求者
    let invoker = Buttons_6(tm: tm)
    invoker.toRight()
    //transform这个操作：错误
    invoker.transform()
    //撤销transform操作
    
    invoker.undo()
    
}





testSimple6()



