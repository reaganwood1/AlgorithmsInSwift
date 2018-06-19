//
//  MacroCommand.swift
//  CommandPattern
//
//  Created by Reagan Wood on 6/18/18.
//  Copyright © 2018 RW Software. All rights reserved.
//

import Foundation

class MacroCommand: Command {
    
    private var commands: [Command]
    
    init (commands: [Command]) {
        self.commands = commands
    }
    
    func execute() {
        for command in commands {
            command.execute()
        }
    }
    
    func undo() {

    }
}
