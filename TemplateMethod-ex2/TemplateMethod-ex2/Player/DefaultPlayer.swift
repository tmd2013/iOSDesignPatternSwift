//
//  DefaultPlayer.swift
//  TemplateMethod-ex2
//
//  Created by ffwang on 2017/6/7.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import UIKit
import AVFoundation

class DefaultPlayer: TemplateAVPlayer {
    private var player:AVPlayer?
    private var playerItem:AVPlayerItem?
    
    override func create(url: String) {
        //创建
        self.playerItem = AVPlayerItem(url: URL(fileURLWithPath: url))
        self.player = AVPlayer(playerItem: self.playerItem)
    }
    
    override func prepare(controller: UIViewController, frame: CGRect) {
        //准备
        let playerLayer = AVPlayerLayer(player: self.player)
        playerLayer.frame = frame
        controller.view.layer.addSublayer(playerLayer)
        
        //添加播放器观察者
        //NotificationCenter:被观察者
        //当前对象：观察者
        NotificationCenter.default.addObserver(self, selector: #selector(stop), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: nil)
        
        self.playerItem?.addObserver(self, forKeyPath: "status", options: NSKeyValueObservingOptions.new, context: nil)
    }
    
    override func play() {
        self.player?.play()
    }
    
    override func puase() {
        self.player?.pause()
    }
    
    override func stop() {
        
    }
    
    //观察者
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        guard (object as! AVPlayerItem) != nil else {
            return
        }
        if (keyPath == "status") {
            self.delegate?.playerCall(status: self.playerItem?.status)
            if self.playerItem?.status == AVPlayerItemStatus.failed {
                print("加载错误")
            }else if self.playerItem?.status == AVPlayerItemStatus.unknown{
                print("未知错误")
            }else if self.playerItem?.status == AVPlayerItemStatus.readyToPlay{
                print("播放正常")
            }
        }
    }
    
    //析构函数(取消观察者订阅)
    deinit {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: nil)
        self.playerItem?.removeObserver(self, forKeyPath: "status")
    }

}
