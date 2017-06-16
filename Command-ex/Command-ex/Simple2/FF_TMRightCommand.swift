//
//  FF_TMRightCommand.swift
//  Command-ex
//
//  Created by ffwang on 2017/6/16.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Cocoa

class FF_TMRightCommand: FF_TMCommandProtocol {
    private var tm : FF_TetrisMachine?
    init(tm : FF_TetrisMachine) {
        self.tm = tm
    }
    
    func execute() {
        self.tm?.toRight()
    }
}
