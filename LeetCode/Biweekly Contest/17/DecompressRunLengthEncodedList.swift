//
//  DecompressRunLengthEncodedList.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 2/7/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func decompressRLElist(_ nums: [Int]) -> [Int] {
    var res: [Int] = []
    for index in stride(from: 0, to: nums.count - 1, by: 2) {
      let arr = Array(repeating: nums[index + 1], count: nums[index])
      res += arr
    }
    return res
  }
}
