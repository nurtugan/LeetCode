//
//  TwoSum.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 1/1/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

import Foundation

class Solution {
  func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var map: [Int: Int] = [:]
    for i in 0..<nums.count {
      let complement = target - nums[i]
      if let value = map[complement] {
        return [value, i]
      }
      map[nums[i]] = i
    }
    return [-1, -1]
  }
}
