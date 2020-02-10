//
//  FindNUniqueIntegersSumUpToZero.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 2/7/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func sumZero(_ n: Int) -> [Int] {
    var res: [Int] = []
    for num in stride(from: 0, to: n - 1, by: 1) {
      res.append(num)
    }
    res.append(-res.reduce(0, +)) // reduce() - sum of all elements
    return res
  }
}
