//
//  RemovePalindromicSubsequences.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 2/4/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func removePalindromeSub(_ s: String) -> Int {
    if s.isEmpty { return 0 }
    else if s == String(s.reversed()) { return 1 }
    else { return 2 }
  }
}
