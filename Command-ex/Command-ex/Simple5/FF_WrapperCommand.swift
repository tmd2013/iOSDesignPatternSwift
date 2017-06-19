//
//  FF_WrapperCommand.swift
//  Command-ex
//
//  Created by ffwang on 2017/6/19.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Cocoa

class FF_WrapperCommand: FF_TMCommandProtocol {
    private var commandList:Array<FF_TMCommandProtocol>?
    
    init(commandList:Array<FF_TMCommandProtocol>) {
        self.commandList = commandList
    }
    
    //执行多个命令
    func execute() {
        for command in self.commandList! {
            command.execute()
        }
    }
}
