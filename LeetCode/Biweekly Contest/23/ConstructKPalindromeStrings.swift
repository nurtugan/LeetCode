//
//  ConstructKPalindromeStrings.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 4/8/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func canConstruct(_ s: String, _ k: Int) -> Bool {
    var dict: [Character: Int] = [:], odd = 0
    guard s.count >= k else {
      return false
    }
    for char in s {
      dict[char] = dict[char] == nil ? 1 : dict[char]! + 1
    }
    for value in dict.values {
      odd += value % 2
    }
    return odd <= k
  }
}
