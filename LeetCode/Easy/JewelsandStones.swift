//
//  JewelsAndStones.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 1/2/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func numJewelsInStones(_ J: String, _ S: String) -> Int {
    var jewelAmount = 0
    var map: [Character: Character] = [:]
    for jewel in J {
      map[jewel] = jewel
    }
    for stone in S {
      if let _ = map[stone] {
        jewelAmount += 1
      }
    }
    return jewelAmount
  }
}
