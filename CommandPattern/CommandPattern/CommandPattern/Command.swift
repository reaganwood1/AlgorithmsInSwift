//
//  Command.swift
//  CommandPattern
//
//  Created by Reagan Wood on 6/17/18.
//  Copyright © 2018 RW Software. All rights reserved.
//

import Foundation

protocol Command {
    func execute () -> Void
    func undo () -> Void
}
