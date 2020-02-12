//
//  SumOfMutatedArrayClosestToTarget.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 2/10/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

import Foundation

extension Solution {
  func findBestValue(_ arr: [Int], _ target: Int) -> Int {
    var target = target
    var arr = arr
    
    func customRound(for number: Double) -> Int {
      let numberAsInt = Int(number)
      return number - Double(numberAsInt) <= 0.5 ? numberAsInt : numberAsInt + 1
    }
    
    func findAvg(_ arr: [Int], _ target: Int) -> Int {
      return customRound(for: Double(target) / Double(arr.count))
    }
    
    var avg = findAvg(arr, target)
    if avg <= arr.min()! { return avg }
    else if arr.reduce(0, +) <= target { return arr.max()! }
    else {
      var min = arr.min()!
      while min < avg {
        target -= min
        let indexOfMin = arr.firstIndex(of: min)
        arr.remove(at: indexOfMin!)
        avg = findAvg(arr, target)
        min = arr.min()!
      }
      return avg
    }
  }
}
