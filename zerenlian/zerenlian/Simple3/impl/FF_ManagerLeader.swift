//
//  FF_ManagerLeader.swift
//  zerenlian
//
//  Created by ffwang on 2017/6/9.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Cocoa

class FF_ManagerLeader: FF_Leader {
    override func limit() -> Double {
        return 10000
    }
    override func handle(expense: FF_ExpenseAccount) {
        print("报销单标题是：\(expense.getTitle()!)")
        print("报销单内容是：\(expense.getBody()!)")
        print("报销单金额是：\(expense.getMoney())")
        print("ManagerLeader报销单审批通过....")
    }
}
