//
//  RemoteControl.swift
//  CommandPattern
//
//  Created by Reagan Wood on 6/17/18.
//  Copyright © 2018 RW Software. All rights reserved.
//

import Foundation

class RemoteControl {
    
    private var onSlots: [Int : Command] = [:]
    private var offSlots: [Int : Command] = [:]
    private var undo: Command? = NoCommand()
    
    public func setOnCommand (slot: Int, command: Command) {
        onSlots[slot] = command
    }
    
    public func setOffComand (slot: Int, command: Command) {
        offSlots[slot] = command
    }
    
    public func onButtonPressed (slot: Int) {
        onSlots[slot]?.execute()
    }
    
    public func offButtonPressed (slot: Int) {
        offSlots[slot]?.execute()
        undo = offSlots[slot]
    }
    
    public func undoButtonPressed (slot: Int) {
        undo?.undo()
    }
}
