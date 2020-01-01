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
    for i in 0..<nums.count {
      let j = i + 1
      for k in j..<nums.count {
        if nums[i] + nums[k] == target {
          return [i, k]
        }
      }
    }
    return [-1, -1]
  }
}
