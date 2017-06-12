//
//  ViewController.swift
//  cursor-ex
//
//  Created by ffwang on 2017/6/12.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let array = FF_ConcreteAggegate<String>()
                array.add(obj: "Dream")
                array.add(obj: "andy")
                array.add(obj: "wolfie")
                array.add(obj: "rayman")
                array.add(obj: "lakerszhang")
                array.add(obj: "nick")
        
                let iterator = array.iterator()
                while iterator.hasNext() {
                    //??:表示如果返回没有，那么给一个默认值
                    print(iterator.next() ?? "没了")
                }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

