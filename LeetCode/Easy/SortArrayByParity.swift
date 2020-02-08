//
//  SortArrayByParity.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 2/7/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func sortArrayByParity(_ A: [Int]) -> [Int] {
    var evenNums: [Int] = []
    var oddNums: [Int] = []
    for num in A {
      if num % 2 == 0 { evenNums.append(num) }
      else { oddNums.append(num) }
    }
    return evenNums + oddNums
  }
}
