//
//  Maximum69Number.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 2/5/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func maximum69Number (_ num: Int) -> Int {
    var numbers = String(num).map { char -> Int in
      char.wholeNumberValue!
    }
    for (index, number) in numbers.enumerated() {
      guard number == 6 else {
        continue
      }
      numbers[index] = 9
      break
    }
    return numbers.reduce(0) { return $0 * 10 + $1 }
  }
}
