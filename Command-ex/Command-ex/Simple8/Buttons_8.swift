//
//  Buttons_8.swift
//  Command-ex
//
//  Created by ffwang on 2017/6/21.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Cocoa

class Buttons_8: NSObject {
    private var tm: FF_TetrisMachine?
    
    typealias commandClosed = ((FF_TetrisMachine) -> (Void))
    
    private var queue = DispatchQueue(label: "Command")
    
    private var commandArray = Array<commandClosed>()
    
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
            self.commandArray.append( { (tetrisMachine) in
                method(tetrisMachine)()
            })
        }
        
    }
    
    func undo() {
        self.queue.sync {
            if self.commandArray.count > 0 {
                print("撤销了以下操作：")
                self.commandArray.removeLast()(tm!)
            }
        }
        
    }
    
}
