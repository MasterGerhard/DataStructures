//
//  ArraySort.swift
//  DataStructures
//
//  Created by Steven Gerhard on 10/22/18.
//  Copyright © 2018 Gerhard. All rights reserved.
//

import Foundation

extension Array where Element == Int {
    public func mergeSort() -> [Int] {
        return ArraySort().mergeSort(array: self)
    }
}

fileprivate class ArraySort {
    
    public func mergeSort(array : [Int]) -> [Int] {
        guard array.count > 1 else {
            return array
        }
        let leftArray = Array(array[0..<array.count/2])
        let rightArray = Array(array[array.count/2..<array.count])
        
        let sortedLeft = mergeSort(array: leftArray)
        let sortedRight = mergeSort(array: rightArray)
        
        return merge(left: sortedLeft, right: sortedRight)
    }
    
    private func merge(left : [Int], right : [Int]) -> [Int] {
        var left = left
        var right = right
        var mergedArray : [Int] = [Int]()
        
        while left.count > 0 && right.count > 0 {
            if left.first! < right.first! {
                mergedArray.append(left.removeFirst())
            }
            else {
                mergedArray.append(right.removeFirst())
            }
        }
        return mergedArray + left + right
    }

}
