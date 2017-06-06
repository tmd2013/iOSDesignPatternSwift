//
//  WxEmsObservable.swift
//  observer-swift
//
//  Created by nonoking on 2017/6/5.
//  Copyright © 2017年 nonoking. All rights reserved.
//

import UIKit

class WxEmsObservable: Observable {
    private var title:String?
    
    func setTitle(title:String) {
        if (self.title != title) {
            isSetChanged(changed: true)
        }
        self.title = title
    }
    
    func push() {
        if self.title != nil {
            notifyObservers(msg: self.title)
        }
    }
}
