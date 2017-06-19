//
//  FF_DynamicCommand.swift
//  Command-ex
//
//  Created by ffwang on 2017/6/16.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Cocoa

class FF_DynamicCommand : FF_TMCommandProtocol{
    private var receiver:FF_TetrisMachine?
    private var instruction:(FF_TetrisMachine)->Void
    
    init(receiver:FF_TetrisMachine,instruction:@escaping (FF_TetrisMachine)->Void) {
        self.receiver = receiver
        self.instruction = instruction
    }
    
    func execute() {
        self.instruction(self.receiver!)
    }
    
    class func createCommand(receiver:FF_TetrisMachine,instruction:@escaping (FF_TetrisMachine)->Void) -> FF_TMCommandProtocol {
        return FF_DynamicCommand(receiver: receiver, instruction: instruction)
    }
}

