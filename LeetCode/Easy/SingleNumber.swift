//
//  SingleNumber.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 1/11/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func singleNumber(_ nums: [Int]) -> Int {
    var set = Set(nums)
    var dict: [Int: Int] = [:]
    for num in nums {
      if dict[num] == nil {
        dict[num] = num
      } else {
        set.remove(num)
      }
    }
    return set.first!
  }
}
