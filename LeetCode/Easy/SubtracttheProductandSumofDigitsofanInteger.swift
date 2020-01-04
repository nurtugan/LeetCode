//
//  SubtractTheProductAndSumOfDigitsOfAnInteger.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 1/2/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func subtractProductAndSum(_ n: Int) -> Int {
    var n = n, sum = 0, product = 1
    while n != 0 {
      sum += n % 10
      product *= n % 10
      n /= 10
    }
    return product - sum
  }
}
