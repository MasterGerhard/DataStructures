//
//  Trie.swift
//  DataStructures
//
//  Created by Steven Gerhard on 10/21/18.
//  Copyright © 2018 Gerhard. All rights reserved.
//

import Foundation

class Trie {
    
    let root : TrieNode
    
    class TrieNode {
        
        var children : [String : TrieNode]
        var isWord : Bool
        
        fileprivate init() {
            children = [String : TrieNode]()
            isWord = false
        }
    }
    
    public init() {
        root = TrieNode()
    }
    
    public func insert(word : String) {
        var currentNode : TrieNode = root
        for (_, char) in word.enumerated() {
            let stringChar = String(char).uppercased()
            
            if currentNode.children[stringChar] == nil {
                currentNode.children[stringChar] = TrieNode()
            }
            currentNode = currentNode.children[stringChar]!
        }
        currentNode.isWord = true
    }
    
    public func search(word : String) -> Bool {
        var currentNode : TrieNode = root
        for (_, char) in word.enumerated() {
            let stringChar = String(char).uppercased()
            guard let node = currentNode.children[stringChar] else { return false }
            currentNode = node
        }
        return currentNode.isWord
    }
}
