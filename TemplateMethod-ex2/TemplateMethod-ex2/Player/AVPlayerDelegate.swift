//
//  Dream_AVPlayerDelegate.swift
//  TemplateMethod-ex2
//
//  Created by ffwang on 2017/6/7.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import Foundation
import AVFoundation

protocol AVPlayerDelegate {
    
    func playerCall(status:AVPlayerItemStatus?)
    
}
