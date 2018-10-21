//
//  HashTable.swift
//  DataStructures
//
//  Created by Steven Gerhard on 10/21/18.
//  Copyright © 2018 Gerhard. All rights reserved.
//

import Foundation

class HashTable {
    var data : [LinkedList?]
    
    var capacity = 101
    var count = 0
    
    public init() {
        data = [LinkedList?](repeating: nil, count: capacity+1)
    }
    
    public func put(key : String, value : Int) {
        let hashCode = getHashCode(key: key)
        let index = getIndex(hashCode : hashCode)
        insertIntoDataArray(index: index, key: key, value: value)
        count = count + 1
    }
    
    public func getValue(key : String) -> Int? {
        let hashCode = getHashCode(key: key)
        let index = getIndex(hashCode : hashCode)
        guard let list : LinkedList = data[index] else {
            return nil
        }
        return list.getValue(key:key)
    }
    
    private func getHashCode(key : String) -> Int {
        var hasher = Hasher()
        hasher.combine(key)
        return hasher.finalize()
    }
    
    private func getIndex(hashCode : Int) -> Int {
        
        return abs(hashCode % capacity)
    }
    
    private func insertIntoDataArray(index : Int, key : String, value : Int) {
        
        guard let _ : LinkedList = data[index] else {
            let newList = LinkedList()
            newList.prepend(value: value, key : key)
            data[index] = newList
            return
        }
        data[index]!.delete(key: key)
        data[index]!.prepend(value: value, key : key)
        return
        
    }
}
