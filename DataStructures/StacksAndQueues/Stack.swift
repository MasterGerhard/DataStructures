//
//  Stack.swift
//  DataStructures
//
//  Created by Steven Gerhard on 8/27/18.
//  Copyright © 2018 Gerhard. All rights reserved.
//

import Foundation

fileprivate class Node {
    var data : Int
    var next : Node?
    public init(data : Int) {
        self.data = data
    }
}

class Stack {

    private var top : Node?
    
    func isEmpty() -> Bool {
        return top == nil
    }
    
    func peek() -> Int? {
        guard let top = self.top else { return nil }
        return top.data
    }
    
    func pop() -> Int? {
        guard let top = self.top else { return nil }
        self.top = top.next
        return top.data
        
    }
    
    func push(data: Int) {
        let newNode = Node(data: data)
        newNode.next = self.top
        self.top = newNode
    }
    
    func printStack() {
        guard let top = self.top else { return }
        var currentNode = top
        print(currentNode.data)
        while (currentNode.next != nil) {
            currentNode = currentNode.next!
            print(currentNode.data)
        }
        print()
    }
}
