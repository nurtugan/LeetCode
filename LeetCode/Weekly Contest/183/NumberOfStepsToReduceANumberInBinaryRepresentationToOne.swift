//
//  NumberOfStepsToReduceANumberInBinaryRepresentationToOne.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 4/7/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

// TODO: Runtime error with long numbers
extension Solution {
  func rec(num: Int, steps: Int) -> Int {
    var num = num, steps = steps
    guard num != 1 else {
      return steps
    }
    steps += 1
    if num.isMultiple(of: 2) {
      num /= 2
    } else {
      num += 1
    }
    return rec(num: num, steps: steps)
  }

  func numSteps(_ s: String) -> Int {
    let num = Int(s, radix: 2)!
    return rec(num: num, steps: 0)
  }
}

