//
//  ToLowerCase.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 1/5/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  // MARK: A -> Z 65 -> 90
  // MARK: a -> z 97 -> 122
  func toLowerCase(_ str: String) -> String {
    var chars = Array(str)
    for i in 0..<chars.count {
      if let charAscii = chars[i].asciiValue,
        65...90 ~= charAscii {
        chars[i] =
          Character(Unicode.Scalar(charAscii + 32))
      }
    }
    return String(chars)
  }
}
