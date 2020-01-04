//
//  SplitAStringInBalancedStrings.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 1/4/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func balancedStringSplit(_ s: String) -> Int {
    var count = 0
    var balance = 0
    for char in s {
      balance += char == "L" ? 1 : -1
      count += balance == 0 ? 1 : 0
    }
    return count
  }
}
