//
//  N-RepeatedElementInSize2NArray.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 1/11/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func repeatedNTimes(_ A: [Int]) -> Int {
    let n = A.count / 2
    var count = 1
    let sortedArray = mergeSort(A)
    for i in 0..<sortedArray.count - 1 {
      if sortedArray[i] == sortedArray[i + 1] {
        count += 1
        if n == count {
          return sortedArray[i]
        }
      } else {
        count = 1
      }
    }
    
    return -1
  }
  
  private func mergeSort<Element>(_ array: [Element])
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
        } else  if leftElement > rightElement {
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
