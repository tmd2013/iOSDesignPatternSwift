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





