//
//  SquaresOfASortedArray.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 1/10/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  
  func sortedSquares(_ A: [Int]) -> [Int] {
    var squaredNums: [Int] = []
    for num in A {
      squaredNums.append(num * num)
    }
    return mergeSort(squaredNums)
  }
  
  func mergeSort<Element>(_ array: [Element])
    -> [Element] where Element: Comparable {
      
      guard array.count > 1 else {
        return array
      }
      
      let middle = array.count / 2
      let left = mergeSort(Array(array[..<middle]))
      let right = mergeSort(Array(array[middle...]))
      
      return merge(left, right)
  }
  
  private func merge<Element>(_ left: [Element], _ right: [Element])
    -> [Element] where Element: Comparable {
      
      var leftIndex = 0
      var rightIndex = 0
      
      var result: [Element] = []
      
      while leftIndex < left.count && rightIndex < right.count {
        
        let leftElement = left[leftIndex]
        let rightElement = right[rightIndex]
        
        if leftElement < rightElement {
          result.append(leftElement)
          leftIndex += 1
        } else if leftElement > rightElement {
          result.append(rightElement)
          rightIndex += 1
        } else {
          result.append(leftElement)
          leftIndex += 1
          result.append(rightElement)
          rightIndex += 1
        }
      }
      
      if leftIndex < left.count {
        result.append(contentsOf: left[leftIndex...])
      }
      if rightIndex < right.count {
        result.append(contentsOf: right[rightIndex...])
      }
      
      return result
  }
}
