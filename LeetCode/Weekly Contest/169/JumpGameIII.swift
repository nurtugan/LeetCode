//
//  JumpGameIII.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 2/9/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func recurse(_ arr: [Int], _ i: Int, _ dict: [Int: Bool]) -> Bool {
    var dict = dict
    
    if dict[i] != nil {
      return dict[i]!
    }
    
    if i >= arr.count || i < 0 || dict.count == arr.count {
      return false
    }
    
    if arr[i] == 0 {
      return true
    }
    
    let minus = recurse(arr, i - arr[i], dict)
    dict[i] = minus
    let plus = recurse(arr, i + arr[i], dict)
    dict[i] = plus
    return minus || plus
  }
  
  func canReach(_ arr: [Int], _ start: Int) -> Bool {
    return recurse(arr, start, [:])
  }
}
