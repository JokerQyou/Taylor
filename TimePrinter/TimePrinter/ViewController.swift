//
//  ViewController.swift
//  TimePrinter
//
//  Created by Joker Qyou on 16/4/24.
//  Copyright © 2016年 Microcore Team. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var label: NSTextField!
    var calendar = NSCalendar.currentCalendar()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("printTime"), userInfo: nil, repeats: true)
    }

    func printTime() {
        let time = calendar.components([.Hour, .Minute, .Second], fromDate: NSDate())
        label.stringValue = String("\(time.hour):\(time.minute):\(time.second)")
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

}

