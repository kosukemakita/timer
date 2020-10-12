//
//  ViewController.swift
//  timer
//
//  Created by 蒔田幸祐 on 2020/10/12.
//  Copyright © 2020 kousuke.makita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    
     var timer_sec: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // タイマーの作成、始動
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
    }
    @objc func updateTimer(_ timer: Timer) {
    self.timer_sec += 0.1
    self.timerLabel.text = String(format: "%.1f", self.timer_sec)
    }
}

