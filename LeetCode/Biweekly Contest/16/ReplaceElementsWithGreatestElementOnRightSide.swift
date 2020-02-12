//
//  ReplaceElementsWithGreatestElementOnRightSide.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 2/10/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func replaceElements(_ arr: [Int]) -> [Int] {
    var arr = arr
    var max = 0
    for i in stride(from: arr.count - 1, through: 0, by: -1) {
      if i == arr.count - 1 {
        max = arr[i]
        arr[i] = -1
      } else {
        if arr[i] > max {
          let previousMax = max
          max = arr[i]
          arr[i] = previousMax
        } else {
          arr[i] = max
        }
      }
    }
    return arr
  }
}
