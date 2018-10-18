//
//  BinarySearchTree.swift
//  DataStructures
//
//  Created by Steven Gerhard on 8/31/18.
//  Copyright © 2018 Gerhard. All rights reserved.
//

import Foundation

class BinarySearchTree {
    
    var data : Int
    var left : BinarySearchTree?
    var right : BinarySearchTree?
    
    public init(data : Int) {
        self.data = data
    }
    
    func insert(data : Int) {
        if data <= self.data {
            if let left = self.left {
                left.insert(data: data)
            }
            else {
                self.left = BinarySearchTree(data: data)
                return
            }
        }
        else {
            if let right = self.right {
                right.insert(data: data)
            }
            else {
                self.right = BinarySearchTree(data: data)
                return
            }
        }
    }
    
    func contains(data : Int) -> Bool {
        if self.data == data { return true }
        if data < self.data {
            guard let left = self.left else { return false }
            return left.contains(data:data)
        }
        else {
            guard let right = self.right else { return false }
            return right.contains(data:data)
        }
    }

    func printInOrder() {
        if let left = self.left {
            left.printInOrder()
        }
        print(self.data)
        if let right = self.right {
            right.printInOrder()
        }
    }
    
    func printPreOrder() {
        print(self.data)
        if let left = self.left {
            left.printPreOrder()
        }
        if let right = self.right {
            right.printPreOrder()
        }
    }
    
    func printPostOrder() {
        
        if let left = self.left {
            left.printPostOrder()
        }
        if let right = self.right {
            right.printPostOrder()
        }
        print(self.data)
    }
    
}
