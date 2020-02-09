//
//  XorQueriesOfASubarray.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 2/8/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func xorQueries(_ arr: [Int], _ queries: [[Int]]) -> [Int] {
    var arr = arr
    arr.insert(0, at: 0)
    var res: [Int] = []
    var sum = 0
    for (i, num) in arr.enumerated() {
      sum ^= num
      arr[i] = sum
    }
    for indexes in queries {
      let diff = arr[indexes[0]] ^ arr[indexes[1] + 1]
      res.append(diff)
    }
    return res
  }
}
