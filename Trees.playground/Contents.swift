//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Node<T> {
    var value: T
    var children: [Node] = []
    weak var parentNode: Node?
    
    init (value: T) {
        self.value = value
    }
    
    func add(child: Node) {
        child.parentNode = self
        children.append(child)
    }
}
extension Node where T: Equatable {
    func search (value: T) -> Node? {
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
