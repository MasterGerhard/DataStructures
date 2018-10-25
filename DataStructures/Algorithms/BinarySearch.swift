//
//  BinarySearch.swift
//  DataStructures
//
//  Created by Steven Gerhard on 10/25/18.
//  Copyright © 2018 Gerhard. All rights reserved.
//

import Foundation
extension Array where Element == Int {
    public func binarySearch(x : Int) -> Int? {
        return BinarySearch().searchForIndexOfX(array: self, x : x)
    }
}

class BinarySearch {
    
    // Returns index of X in a sorted array if it exists
    public func searchForIndexOfX(array : [Int], x : Int) -> Int? {
        return search(array:array, x:x, leftIndex: 0, rightIndex: array.count-1)
    }
    
    private func search(array : [Int], x : Int, leftIndex : Int, rightIndex : Int) -> Int? {
        let midPoint = leftIndex + ((rightIndex-leftIndex) / 2)
        let midPointValue = array[midPoint]
        
        if leftIndex == rightIndex && midPointValue != x {
            return nil
        }
        if midPointValue == x {
            return midPoint
        }
        else if midPointValue < x {
            return search(array:array, x:x, leftIndex:midPoint+1, rightIndex:rightIndex)
        }
        else {
            return search(array:array, x:x, leftIndex:leftIndex, rightIndex:midPoint-1 )
        }
    }
    
}
