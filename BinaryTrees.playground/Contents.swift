//: Playground - noun: a place where people can play

import UIKit

class BinaryTree {
    var value: Int
    var leftChild: BinaryTree?
    var rightChild: BinaryTree?
    
    init (value: Int) {
        self.value = value
    }
}

extension BinaryTree {
    
    func addValueToTree (value: Int) {
        var tree = BinaryTree(value: value)
        addBinaryTree(tree: tree)
    }
    
    func addBinaryTree (tree: BinaryTree) {
        if (value < value) {
            addLeftTree(bTree: tree)
        } else {
            addRightTree(bTree: tree)
        }
    }
    
    func addLeftTree (bTree: BinaryTree) {
        if let leftNode = leftChild {
            leftNode.addBinaryTree(tree: bTree)
        } else {
            leftChild = bTree
        }
    }
    
    func addRightTree (bTree: BinaryTree) {
        if let rightNode = rightChild {
            rightNode.addBinaryTree(tree: bTree)
        } else {
            rightNode = bTree
        }
    }
    
}
