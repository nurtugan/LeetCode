//
//  NumberOfStepsToReduceANumberToZero.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 4/8/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func numberOfSteps (_ num: Int) -> Int {
    var steps = 0, num = num
    while num > 0 {
      steps += 1
      if num.isMultiple(of: 2) { num /= 2 }
      else { num -= 1 }
    }
    return steps
  }
}
