//
//  FindNumbersWithEvenNumberOfDigits.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 1/2/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

import Foundation

extension Solution {
  func findNumbers(_ nums: [Int]) -> Int {
    var count = 0
    for num in nums {
      let numAsString = String(num)
      if numAsString.count % 2 == 0 {
        count += 1
      }
    }
    return count
  }
}
