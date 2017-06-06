//
//  ViewController.swift
//  observer-swift
//
//  Created by nonoking on 2017/6/5.
//  Copyright © 2017年 nonoking. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //测试
                let observable = Observable()
                let simpleObserver = ABCObserver()
                let caffreyObserver = EFGObserver()
                observable.isSetChanged(changed: true)
                observable.addObserver(o: simpleObserver)
                observable.addObserver(o: caffreyObserver)
        
                observable.notifyObservers(msg: "恭喜你中了500万双色球")
        
        
        //测试微信公众号
//        let observable = WxEmsObservable()
//        let abcObserver = ABCObserver()
//        let efgObserver = EFGObserver()
//        observable.addObserver(o: abcObserver)
//        observable.addObserver(o: efgObserver)
//        observable.setTitle(title: "恭喜你获得了英雄联盟皮肤")
//        observable.push()
//        observable.push()
//        observable.push()
//        observable.push()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

