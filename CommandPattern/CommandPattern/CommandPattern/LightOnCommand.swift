//
//  LightOnCommand.swift
//  CommandPattern
//
//  Created by Reagan Wood on 6/17/18.
//  Copyright © 2018 RW Software. All rights reserved.
//

import Foundation

class LightOnCommand : Command {
    
    private var light: Light
    
    init (light: Light) {
        self.light = light
    }
    
    func execute() {
        light.turnOn()
    }
    
    func undo () {
        light.turnOff()
    }
}

class Light {
    private var on = false
    
    public func turnOn () {
        on = true
    }
    
    public func turnOff () {
        on = false
    }
}
