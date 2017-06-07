//
//  TemplateAVPlayer.swift
//  TemplateMethod-ex2
//
//  Created by ffwang on 2017/6/7.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import UIKit

class TemplateAVPlayer: NSObject {
    var delegate:AVPlayerDelegate?
    
    func play(controller:UIViewController,frame:CGRect,url:String) {
        self.create(url: url)
        self.prepare(controller: controller, frame: frame)
        self.play()

    }
    
    //创建播放器
    func create(url:String) {
        
    }
    
    //准备播放器(设置参数:预加载)
    func prepare(controller:UIViewController,frame:CGRect){
        
    }
    
    //播放
    func play() {
        
    }
    
    //暂停
    func puase(){
        
    }
    
    //停止
    func stop(){
        
    }
}
