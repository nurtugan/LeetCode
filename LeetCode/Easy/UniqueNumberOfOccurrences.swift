//
//  UniqueNumberOfOccurrences.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 2/7/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func uniqueOccurrences(_ arr: [Int]) -> Bool {
    var dict: [Int: Int] = [:]
    for number in arr {
      dict[number] = dict[number] == nil ? 0 : dict[number]! + 1
    }
    return dict.values.count == Set(dict.values).count
  }
}
