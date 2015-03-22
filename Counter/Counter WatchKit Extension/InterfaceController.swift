//
//  InterfaceController.swift
//  Counter WatchKit Extension
//
//  Created by ZhangBo on 15/3/17.
//  Copyright (c) 2015年 ZhangBo. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet private weak var countButton: WKInterfaceButton!

    
    var counter: Counter
    
    override init() {
        counter = Counter()
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        counter.load()
        countButton.setTitle("\(counter.count)")
        // Configure interface objects here.
        NSLog("%@ awakeWithContext", self)

        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    
    @IBAction func increseCounter() {
        counter.increase()
        counter.save()
        countButton.setTitle("\(counter.count)")
    }
    
    @IBAction func resetCounter() {
        counter.reset()
        countButton.setTitle("\(counter.count)")
    }


}
