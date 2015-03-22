//
//  Counter.swift
//  Counter
//
//  Created by ZhangBo on 15/3/17.
//  Copyright (c) 2015年 ZhangBo. All rights reserved.
//

import Foundation

let counterKey = "counter"
struct Counter {
    
    private (set) var count: Int = 0
    mutating func increase() {
        count += 1
    }
    
    func save() {
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(count, forKey: counterKey)
    }
    
    mutating func load() {
        count = NSUserDefaults.standardUserDefaults().integerForKey(counterKey)
    }
    
    mutating func reset() {
        count = 0
        save()
    }
    
}