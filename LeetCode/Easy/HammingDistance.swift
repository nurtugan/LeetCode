//
//  HammingDistance.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 4/8/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func hammingDistance(_ x: Int, _ y: Int) -> Int {
    let arr = [x, y].map { Array(String($0, radix: 2)) }
    var x = arr[0], y = arr[1], dist = 0
    if x.count > y.count { y = Array(repeating: "0", count: x.count - y.count ) + y }
    else { x = Array(repeating: "0", count: y.count - x.count) + x }
    for i in 0..<x.count {
      if x[i] != y[i] { dist += 1 }
    }
    return dist
  }
}
