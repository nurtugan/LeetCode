//
//  ConvertIntegerToTheSumOfTwoNoZeroIntegers.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 2/6/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func getNoZeroIntegers(_ n: Int) -> [Int] {
    for number in stride(from: 1, to: n, by: 1) {
      let firstNumber = String(number)
      let secondNumber = String(n - number)
      guard !firstNumber.contains("0") && !secondNumber.contains("0") else { continue }
      return [Int(firstNumber)!, Int(secondNumber)!]
    }
    return []
  }
}
