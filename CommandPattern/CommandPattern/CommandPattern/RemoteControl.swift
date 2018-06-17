//
//  RemoteControl.swift
//  CommandPattern
//
//  Created by Reagan Wood on 6/17/18.
//  Copyright © 2018 RW Software. All rights reserved.
//

import Foundation

class RemoteControl {
    private var slot: Command? = nil
    
    public func setCommand (command: Command) {
        slot = command
    }
    
    public func buttonPressed () {
        slot?.execute()
    }
}
