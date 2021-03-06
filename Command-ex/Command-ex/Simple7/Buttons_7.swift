//
//  Buttons_7.swift
//  Command-ex
//
//  Created by ffwang on 2017/6/21.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Cocoa

class Buttons_7: NSObject {
    private var tm: FF_TetrisMachine?
    
    private var queue = DispatchQueue(label: "Command")
    
    private var commandArray = Array<FF_TMCommandProtocol>()
    
    init(tm: FF_TetrisMachine) {
        self.tm = tm
        
    }
    
    func toLeft() {
        addCommand(method: FF_TetrisMachine.toLeft)
        self.tm?.toLeft()
    }
    
    func toRight() {
        addCommand(method: FF_TetrisMachine.toRight)
        self.tm?.toRight()
    }
    
    func fastToButtom() {
        addCommand(method: FF_TetrisMachine.fastToButtom)
        self.tm?.fastToButtom()
    }
    
    func transform(){
        addCommand(method: FF_TetrisMachine.transform)
        self.tm?.transform()
    }
    
    private func addCommand(method:@escaping (FF_TetrisMachine)->(Void)->Void) {
        self.queue.sync {
            self.commandArray.append(FF_GenericsCommand<FF_TetrisMachine>.createCommand(receiver: self.tm!, instruction: { (tetrisMachine) in
                method(tetrisMachine)()
            }))
        }
        
    }
    
    func undo() {
        self.queue.sync {
            if self.commandArray.count > 0 {
                print("撤销了以下操作：")
                self.commandArray.removeLast().execute()
            }
        }
        
    }
    
    func undoAll() {
        self.queue.sync {
            for command in self.commandArray {
                command.execute()
            }
            self.commandArray.removeAll()
        }
        
    }
    
    func recover() {
        self.queue.sync {
            for command in self.commandArray {
                command.execute()
            }
        }
    }
}
