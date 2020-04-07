//
//  MinimumSubsequenceInNonIncreasingOrder.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 4/7/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func minSubsequence(_ nums: [Int]) -> [Int] {
    let nums = nums.sorted(by: >)
    let sum = nums.reduce(0, +)
    var minSum = 0, arr: [Int] = []
    for num in nums {
      if minSum > sum - minSum {
        break
      } else {
        minSum += num
        arr.append(num)
      }
    }
    return arr
  }
}
