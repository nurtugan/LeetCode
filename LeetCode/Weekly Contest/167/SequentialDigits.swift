//
//  SequentialDigits.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 2/13/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func sequentialDigits(_ low: Int, _ high: Int) -> [Int] {
    var res: [Int] = []
    
    let lowCount = String(low).count
    let highCount = String(high).count
    
    var total = 0
    for i in stride(from: lowCount, through: highCount, by: 1) {
      let diff = 10 - i
      total += diff == 0 ? 10 : diff
    }
    
    var startNum = Int(Array(String(low)).first!.description)!
    var digitsCount = String(low).count
    var i = 0
    while i < total {
      i += 1
      var sequenceStr = ""
      for j in 0..<digitsCount {
        sequenceStr += String(startNum + j)
      }
      if sequenceStr.contains("0") {
        digitsCount += 1
        startNum = 1
        continue
      }
      
      if let sequenceInt = Int(sequenceStr),
        sequenceInt >= low && sequenceInt <= high {
        res.append(sequenceInt)
      }
      startNum += 1
    }
    return res
  }
}
