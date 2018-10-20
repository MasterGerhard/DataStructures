//
//  Heap.swift
//  DataStructures
//
//  Created by Admin on 10/19/18.
//  Copyright © 2018 Gerhard. All rights reserved.
//

import Foundation
import UIKit

class MinIntHeap {
    
    private var items: [Int]
    
    private func size() -> Int {
        return items.count
    }
    
    public init() {
        items = [Int]()
    }
    
    private func getLeftChildIndex(parentIndex : Int) -> Int {
        return 2 * parentIndex + 1;
    }
    
    private func getRightChildIndex(parentIndex : Int) -> Int {
        return 2 * parentIndex + 2;
    }
    
    private func getParentIndex(childIndex : Int) -> Int {
        return (childIndex - 1 ) / 2;
    }
    
    private func hasLeftChild(index: Int) -> Bool {
        return getLeftChildIndex(parentIndex: index) < size();
    }
    
    private func hasRightChild(index: Int) -> Bool {
        return getRightChildIndex(parentIndex: index) < size();
    }
    
    private func hasParent(index: Int) -> Bool {
        return index > 0;
    }
    
    private func leftChild(parentIndex: Int) -> Int {
        return items[getLeftChildIndex(parentIndex: parentIndex)]
        
    }
    
    private func rightChild(parentIndex : Int) -> Int {
        return items[getRightChildIndex(parentIndex: parentIndex)]
    }
    
    private func parent(childIndex : Int) -> Int {
        return items[getParentIndex(childIndex: childIndex)]
    }
    
    private func swap(indexOne : Int, indexTwo: Int) {
        let temp = items[indexOne]
        items[indexOne] = items[indexTwo]
        items[indexTwo] = temp
    }
    

    public func peek() -> Int? {
        if size() <= 0 {
            return nil
        }
        return items[0]
        
    }
    
    public func poll() -> Int? {
        if size() <= 0 {
            return nil
        }
        let ans = items[0]
        items[0] = items[size()-1]
        items.remove(at: size()-1)
        heapifyDown()
        return ans
    }
    
    public func add(item: Int) {
        items.append(item)
        heapifyUp()
    }
    
    
    public func heapifyDown() {
        
        var currentIndex = 0
        while (hasLeftChild(index: currentIndex)) {
            var smallerChildIndex = getLeftChildIndex(parentIndex: currentIndex)
            
            if hasRightChild(index: currentIndex) && rightChild(parentIndex: currentIndex) < leftChild(parentIndex: currentIndex) {
                smallerChildIndex = getRightChildIndex(parentIndex: currentIndex)
            }
            if items[currentIndex] < items[smallerChildIndex] {
                break
            }
            else {
                swap(indexOne: currentIndex, indexTwo: smallerChildIndex)
            }
            currentIndex = smallerChildIndex
        }
    }
    
    public func heapifyUp() {
        var currentIndex = size() - 1
        while(hasParent(index: currentIndex) && parent(childIndex: currentIndex) > items[currentIndex]) {
            swap(indexOne: getParentIndex(childIndex: currentIndex), indexTwo: currentIndex)
            currentIndex = getParentIndex(childIndex: currentIndex)

        }
    }
    
    public func printHeapArray() {
        print(items)
//        let levels :Int = Int(log2(Double(size())).rounded(FloatingPointRoundingRule.up))
//
//        for _ in 0...levels {
//
//
//            let itemsPerLevel = Int(pow(2,levels) as NSDecimalNumber)
//            print("\n")
//            for  j in 0...itemsPerLevel {
//                var itemsPrinted = 0
//                print(items[j + itemsPrinted], terminator: " ")
//                itemsPrinted += 1
//                if itemsPrinted == size() {
//                    break
//                }
//            }
//        }
    }
}
