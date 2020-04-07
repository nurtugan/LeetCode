//
//  ReverseBits.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 4/8/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func reverseBits(_ n: Int) -> Int {
    var bin = String(n, radix: 2)
    bin = String(repeating: "0", count: 32 - bin.count) + bin
    return Int(String(bin.reversed()), radix: 2)!
  }
}
