//
//  LinkedList.swift
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

class LinkedList {
    
    private var head : Node?
    
    public init() {}
    
    // Add new node with given data to end of linked list
    func append(data : Int) {
        // if no head exists this data is the start of the linked list
        guard let _ = self.head else {
            self.head = Node(data: data)
            return
        }
        
        var currentNode = self.head!
        while (currentNode.next != nil) {
            currentNode = currentNode.next!
        }
        currentNode.next = Node(data: data)
        
    }
    
    // Add new node with given data to beginning of linked list
    func prepend(data: Int) {
        // if no head exists this data is the start of the linked list
        guard let head = self.head else {
            self.head = Node(data: data)
            return
        }
        let newNode = Node(data: data)
        newNode.next = head
        self.head = newNode
    }
    
    // Removes the node containing the first occurance of the given data
    func delete(data : Int) {
        // If theres no head theres no data to delete
        guard let head = self.head else { return }
        
        // If head contains the data to delete
        if head.data == data {
            self.head = head.next
            return
        }
        
        var currentNode = head
        
        while (currentNode.next != nil) {
            if currentNode.next!.data == data {
                currentNode.next = currentNode.next!.next
                return
            }
            else {
                currentNode = currentNode.next!
            }
        }
    }
    
    func printList() {
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
