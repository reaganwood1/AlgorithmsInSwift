//
//  CeilingFan.swift
//  CommandPattern
//
//  Created by Reagan Wood on 6/18/18.
//  Copyright © 2018 RW Software. All rights reserved.
//

import Foundation

class CeilingFan {
    private let high = 3
    private let medium = 2
    private let low = 1
    private let off = 0
    private var speed = 0
    
    init () {}
    
    public func setSpeedHigh () { speed = high }
    public func setSpeedMedium () { speed = medium }
    public func setSpeedLow () { speed = low }
    public func setSpeedOff () { speed = off }
    public func getSpeed () -> Int { return speed }
}

class CeilingFanControl: Command {
    private var fan: CeilingFan
    
    init (fan: CeilingFan) {
        self.fan = fan
    }
    
    func execute() {
        fan.setSpeedHigh()
    }
    
    func undo() {
        let fanSpeed = fan.getSpeed()
        if fanSpeed == 3 {
            fan.setSpeedMedium()
        } else if fanSpeed == 2 {
            fan.setSpeedLow()
        } else if fanSpeed == 1 {
            fan.setSpeedOff()
        }
    }
}
