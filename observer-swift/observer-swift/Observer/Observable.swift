//
//  Observable.swift
//  observer-swift
//
//  Created by nonoking on 2017/6/5.
//  Copyright © 2017年 nonoking. All rights reserved.
//

import Foundation

class Observable : NSObject {
    private var obs:Array<Observer>?
    private var changed:Bool = false
    
    override init() {
        super.init()
        self.obs = Array<Observer>()
    }
    
    //首先注册观察者
    func addObserver(o:Observer){
        self.obs?.append(o)
    }
    
    //取消注册(取消订阅)
    //注意啦：在Swift中Array数组不能够根据对象删除，可以根据索引删除
    //所以替代方案：NSMutableArray
    func deleteObserver(o:Observer){
        self.obs?.removeLast()
    }
    
    //取消所有订阅(取消所有的观察者)
    func deleteObservers(){
        self.obs?.removeAll()
    }
    
    //通知所有的观察者
    func notifyObservers(){
        notifyObservers(msg: nil)
    }
    
    //根据消息通知
    func notifyObservers(msg:Any?){
        if !self.changed {
            return
        }
        
        //修改状态
        self.isSetChanged(changed: false)
        
        //类似于for循环
        self.obs?.forEach({ (o) in
            o.update(o: self, msg: msg)
        })
    }

    //设置更新
    func isSetChanged(changed:Bool) {
        self.changed = changed
    }
    
    //是否发生了更新
    func hasChanged() -> Bool {
        return self.changed
    }
    
    
}
