//
//  FF_MacInvoker.swift
//  Command-ex
//
//  Created by ffwang on 2017/6/14.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Cocoa

class FF_MacInvoker: NSObject {
    private var startupCommand : FF_MacStartupCommand?
    private var shutdownCommand : FF_MacShutdownCommand?
    
    init(startupCommand : FF_MacStartupCommand,shutdownCommand : FF_MacShutdownCommand) {
        super.init()
        self.startupCommand = startupCommand
        self.shutdownCommand = shutdownCommand
    }
    
    func startup() {
        self.startupCommand?.execute()
    }
    
    func shutdown() {
        self.shutdownCommand?.execute()
    }
}
