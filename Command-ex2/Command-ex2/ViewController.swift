//
//  ViewController.swift
//  Command-ex2
//
//  Created by ffwang on 2017/6/21.
//  Copyright © 2017年 ffwang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfContent: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func clickUndo(_ sender: UIButton) {
        undoManager?.undo()
    }
    @IBAction func clickSave(_ sender: UIButton) {
        undoManager?.registerUndo(withTarget: self, selector: #selector(ViewController.undoContent), object: tfContent.text)
    }
    
    func undoContent(text:String) {
        tfContent.text = text
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

