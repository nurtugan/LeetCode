//
//  NumberOf1Bits.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 4/8/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func hammingWeight(_ n: Int) -> Int {
    let bits = Array(String(n, radix: 2))
    var count = 0
    bits.forEach { if $0 == "1" {count += 1} }
    return count
  }
}
