//
//  FindLuckyIntegerInAnArray.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 4/9/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func findLucky(_ arr: [Int]) -> Int {
    var dict: [Int: Int] = [:], res = -1
    for num in arr {
      dict[num] = dict[num] == nil ? 1 : dict[num]! + 1
    }
    for (num, freq) in dict {
      if num == freq, num > res {
        res = num
      }
    }
    return res
  }
}
