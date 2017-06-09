//
//  FF_ExpenseAccount.swift
//  zerenlian
//
//  Created by ffwang on 2017/6/9.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Cocoa

class FF_ExpenseAccount: NSObject {
    var title : String?
    
    var money : Double?
    
    var body : String?
    
    init(title:String,money:Double,body:String) {
        self.title = title
        
        self.money = money
        
        self.body = body
    }
    
    func getTitle() -> String? {
        return self.title
    }
    func getBody() -> String? {
        return self.body
    }
    
    func getMoney() -> Double {
        return money!
    }
    
    
}
