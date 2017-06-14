//
//  FF_MacStartupCommand.swift
//  Command-ex
//
//  Created by ffwang on 2017/6/14.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Cocoa

class FF_MacStartupCommand: NSObject {
    private var receiver : FF_MacComputer?
    
     init(receiver : FF_MacComputer) {
        super.init()
        self.receiver = receiver
    }
    
    func execute() {
        self.receiver?.startup()
    }

}
