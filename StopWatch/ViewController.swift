//
//  ViewController.swift
//  StopWatch
//
//  Created by 上田　護 on 2017/10/28.
//  Copyright © 2017年 上田　護. All rights reserved.
//git

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    var count: Float = 0.0
    
    var timer: Timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func up(){
        //countを0.01足す
        count = count + 0.01
        
        label.text = String(format: "%.2f", count)
    }

    @IBAction func start() {
        if !timer.isValid {
            //タイマーが動作していないとき
            timer = Timer.scheduledTimer(timeInterval: 0.01,
                                         target: self,
                                         selector: #selector(self.up),
                                         userInfo: nil,
                                         repeats: true
            )
        }
        
    }

    @IBAction func stop() {
        if timer.isValid {
            //タイマーが動作しているとき
            timer.invalidate()
            
        }
    }
}

