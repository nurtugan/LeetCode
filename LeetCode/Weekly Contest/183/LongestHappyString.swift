//
//  LongestHappyString.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 4/7/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

import Foundation

extension Solution {
  func longestDiverseString(_ a: Int, _ b: Int, _ c: Int) -> String {
    var a = a, b = b, c = c
    var res = ""
    let size = a + b + c
    var A = 0, B = 0, C = 0
    for _ in stride(from: 0, to: size, by: 1) {
      if (a >= b && a >= c && A != 2) || (B == 2 && a > 0) || (C == 2 && a > 0) {
        res.append("a")
        a -= 1
        A += 1
        B = 0
        C = 0
      } else if (b >= a && b >= c && B != 2) || (A == 2 && b > 0) || (C == 2 && b > 0) {
        res.append("b")
        b -= 1
        B += 1
        A = 0
        C = 0
      } else if (c >= a && c >= b && C != 2) || (B == 2 && c > 0) || (A == 2 && c > 0) {
        res.append("c")
        c -= 1
        C += 1
        A = 0
        B = 0
      }
    }
    return res
  }
}
