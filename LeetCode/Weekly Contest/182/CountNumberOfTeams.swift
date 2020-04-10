//
//  CountNumberOfTeams.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 4/9/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func numTeams(_ rating: [Int]) -> Int {
    var count = 0
    for i in stride(from: 0, to: rating.count, by: 1) {
      for j in stride(from: i, to: rating.count, by: 1) {
        for k in stride(from: j, to: rating.count, by: 1) {
          if rating[i] < rating[j] && rating[j] < rating[k] || rating[i] > rating[j] && rating[j] > rating[k] {
            count += 1
          }
        }
      }
    }
    return count
  }
}
