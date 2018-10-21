//
//  LinkedList.swift
//  DataStructures
//
//  Created by Steven Gerhard on 8/27/18.
//  Copyright © 2018 Gerhard. All rights reserved.
//

import Foundation

fileprivate class Node {
    var value : Int
    var key : String
    var next : Node?
    public init(value : Int, key : String) {
        self.value = value
        self.key = key
    }
}

class LinkedList {
    
    private var head : Node?
    
    public init() {}
    
    // Add new node with given data to end of linked list
    func append(value : Int, key : String) {
        // if no head exists this data is the start of the linked list
        guard let _ = self.head else {
            self.head = Node(value: value, key : key)
            return
        }
        
        var currentNode = self.head!
        while (currentNode.next != nil) {
            currentNode = currentNode.next!
        }
        currentNode.next = Node(value: value, key : key)
    }
    
    // Add new node with given data to beginning of linked list
    func prepend(value: Int, key : String) {
        // if no head exists this data is the start of the linked list
        guard let head = self.head else {
            self.head = Node(value: value, key : key)
            return
        }
        let newNode = Node(value: value, key : key)
        newNode.next = head
        self.head = newNode
    }
    
    // Removes the node containing the first occurance of the given key
    func delete(key : String) {
        // If theres no head theres no data to delete
        guard let head = self.head else { return }
        
        // If head contains the data to delete
        if head.key == key {
            self.head = head.next
            return
        }
        
        var currentNode = head
        
        while (currentNode.next != nil) {
            if currentNode.next!.key == key {
                currentNode.next = currentNode.next!.next
                return
            }
            else {
                currentNode = currentNode.next!
            }
        }
    }
    
    // Returns the value from node containing the first occurance of the given key
    func getValue(key : String) -> Int? {
        // If theres no head theres no value
        guard let head = self.head else { return nil }
        
        // If head contains the data to delete
        if head.key == key {
            return head.value
        }
        
        var currentNode = head
        
        while (currentNode.next != nil) {
            if currentNode.next!.key == key {
                return currentNode.next!.value
            }
            else {
                currentNode = currentNode.next!
            }
        }
        return nil
    }
    
    func printList() {
        guard let head = self.head else { return }
        var currentNode = head
        print(currentNode.value)
        while (currentNode.next != nil) {
            currentNode = currentNode.next!
            print(currentNode.value)
            
        }
        print()
    }
}
