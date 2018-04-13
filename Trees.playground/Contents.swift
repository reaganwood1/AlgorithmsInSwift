//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Node {
    var value: String
    var children: [Node] = []
    weak var parentNode: Node?
    
    init (value: String) {
        self.value = value
    }
    
    func add(child: Node) {
        child.parentNode = self
        children.append(child)
    }
    
    func search (value: String) -> Node? {
        if self.value == value {
            return self
        }
        for child in children {
            if let found = child.search(value: value) {
                return found
            }
        }
        return nil
    }
}
