//
//  FF_GenericsCommand.swift
//  Command-ex
//
//  Created by ffwang on 2017/6/19.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Cocoa

class FF_GenericsCommand<T>: FF_TMCommandProtocol {
    private var receiver:T?
    private var instruction:(T)->Void
    init(receiver:T,instruction:@escaping (T)->Void) {
        self.receiver = receiver
        self.instruction = instruction
    }
    
    func execute() {
        self.instruction(self.receiver!)
    }
    
    class func createCommand(receiver:T,instruction:@escaping (T)->Void) -> FF_TMCommandProtocol {
        return FF_GenericsCommand<T>(receiver: receiver, instruction: instruction)
    }
}
