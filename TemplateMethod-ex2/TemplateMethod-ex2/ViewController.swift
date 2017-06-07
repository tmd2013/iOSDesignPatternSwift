//
//  ViewController.swift
//  TemplateMethod-ex2
//
//  Created by ffwang on 2017/6/7.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,AVPlayerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        //测试开发
        
        let path = Bundle.main.path(forResource: "Test", ofType: ".mov")
        let player = DefaultPlayer()
        player.delegate = self
        player.play(controller: self, frame: self.view.frame, url: path!)
    }
    
    func playerCall(status: AVPlayerItemStatus?) {
        print("播放回调")
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

