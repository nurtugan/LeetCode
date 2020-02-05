//
//  TheKWeakestRowsInAMatrix.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 2/3/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func kWeakestRows(_ mat: [[Int]], _ k: Int) -> [Int] {
    var dict: [Int: Int] = [:]
    for (index, x) in mat.enumerated() {
      var count = 0
      for y in x {
        guard y == 1 else { continue }
        count += 1
      }
      dict[index] = count
    }
    
    
    let sortedDict = dict.sorted { firstElement, secondElement -> Bool in
      if firstElement.value == secondElement.value {
        return firstElement.key < secondElement.key
      }
      return firstElement.value < secondElement.value
    }
    let keys = sortedDict.map { tuple -> Int in
      tuple.key
    }
    return Array(keys[0..<k])
  }
}
