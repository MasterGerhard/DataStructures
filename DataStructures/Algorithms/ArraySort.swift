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
    
    public func quickSort() -> [Int] {
        return ArraySort().quickSort(array: self)
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
    
    public func quickSort(array : [Int]) -> [Int] {
        guard array.count > 1 else {
            return array
        }
        let pivot = array.count/2
        let (leftArray, rightArray) = partion(array: array, pivot: pivot)
        var sortedLeft = quickSort(array: leftArray)
        sortedLeft.append(array[pivot])
        let sortedRight = quickSort(array: rightArray)
        
        return sortedLeft + sortedRight
    }
    
    private func partion(array : [Int], pivot : Int) -> ([Int] , [Int]) {
        var leftArray = [Int]()
        var rightArray = [Int]()
        var array = array
        let pivotValue = array[pivot]
        array.remove(at: pivot)
        
        for index in 0..<array.count  {
            if array[index] < pivotValue {
                leftArray.append(array[index])
            }
            else {
                rightArray.append(array[index])
            }
        }
        return (leftArray,rightArray)
    }

}
