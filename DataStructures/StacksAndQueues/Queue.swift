//
//  Queue.swift
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

class Queue {

    private var head : Node?
    private var tail : Node?
    
    func isEmpty() -> Bool {
        return (head == nil)
    }
    
    func peek() -> Int? {
        guard let head = self.head else { return nil }
        return head.data
    }
    
    func add(data: Int) {
        let newNode = Node(data: data)
        // if there is a tail
        if let _ = self.tail {
            self.tail!.next = newNode
        }
        self.tail = newNode
        // there isnt a head
        if self.head == nil {
            self.head = newNode
        }
    }
    
    func remove() -> Int? {
        guard let head = self.head else { return nil }
        self.head = head.next
        if head.next == nil {
            self.tail = nil
        }
        return head.data
    }
    
    func printQueue() {
        guard let head = self.head else { return }
        var currentNode = head
        print(currentNode.data)
        while (currentNode.next != nil) {
            currentNode = currentNode.next!
            print(currentNode.data)
            
        }
        print()
    }
}
