//
//  FF_Leader.swift
//  zerenlian
//
//  Created by ffwang on 2017/6/9.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Cocoa

class FF_Leader: NSObject {
    
    var nextLeader : FF_Leader?
    
   final func handleExpense(expense:FF_ExpenseAccount) {
        if expense.getMoney() <= self.limit() {
            //满足要求，执行当前处理
            self.handle(expense: expense)
        } else {
            //不满足要求执行下一个节点
            self.nextLeader?.handleExpense(expense: expense)
        }
    }
    
    func handle(expense:FF_ExpenseAccount) {
        
    }
    
    func limit() -> Double {
        return 0
    }
    

}
