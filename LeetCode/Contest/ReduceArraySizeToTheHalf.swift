//
//  ReduceArraySizeToTheHalf.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 2/3/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func minSetSize(_ arr: [Int]) -> Int {
    var dict: [Int: Int] = [:]
    for i in arr {
      if dict[i] == nil {
        dict[i] = 1
      } else {
        dict[i]! += 1
      }
    }
    let total = arr.count
    let half = total / 2
    let sortedDict = dict.sorted { firstElement, secondElement -> Bool in
      firstElement.value > secondElement.value
    }
    
    let values = sortedDict.map { tuple -> Int in
      tuple.value
    }
    
    var sum = 0
    for (index, value) in values.enumerated() {
      sum += value
      if sum >= half {
        return index + 1
      }
    }
    return -1
  }
}
