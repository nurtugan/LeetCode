//
//  CountLargestGroup.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 4/8/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func countLargestGroup(_ n: Int) -> Int {
    var dict: [Int: Int] = [:]
    for num in 1...n {
      var num = num
      let n5 = num % 10
      num /= 10
      let n4 = num % 10
      num /= 10
      let n3 = num % 10
      num /= 10
      let n2 = num % 10
      num /= 10
      let n1 = num % 10
      let sum = n5 + n4 + n3 + n2 + n1
      dict[sum] = dict[sum] == nil ? 1 : dict[sum]! + 1
    }
    let max = dict.max { $0.value < $1.value }
    let count = dict.filter({ $0.value == max!.value }).count
    return count
  }
}
