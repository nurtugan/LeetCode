//
//  MaximumSideLengthOfASquareWithSumLessThanOrEqualToThreshold.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 2/13/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

// MARK: - Not solved
extension Solution {
  private func slideWindow(_ arr: [Int]) -> [Int] {
    var res: [Int] = []
    var sum = 0
    for i in arr {
      sum += i
      res.append(sum)
    }
    //    print(res)
    return res
  }
  
  func maxSideLength(_ mat: [[Int]], _ threshold: Int) -> Int {
    var slidedWindow: [[Int]] = []
    for row in stride(from: 0, to: mat.count, by: 1) {
      if row == 0 {
        let firstRow = slideWindow(mat[row])
        slidedWindow.append(firstRow)
        print(firstRow)
      } else if row == 1 {
        let lastRow = slidedWindow.last!
        var sum = Array(repeating: 0, count: mat[row].count)
        for column in stride(from: 0, to: mat[row].count, by: 1) {
          sum[column] = lastRow[column] + lastRow[column]
        }
        slidedWindow.append(sum)
        print(sum)
      } else {
        let preLastRow = slidedWindow[slidedWindow.count - 2]
        let lastRow = slidedWindow.last!
        var sum = Array(repeating: 0, count: mat[row].count)
        for column in stride(from: 0, to: mat[row].count, by: 1) {
          sum[column] = lastRow[column] + preLastRow[column]
        }
        slidedWindow.append(sum)
        print(sum)
      }
    }
    
    var res: [Int] = []
    for row in stride(from: 0, to: slidedWindow.count, by: 1) {
      for column in stride(from: 0, to: slidedWindow[row].count, by: 1) {
        if threshold >= slidedWindow[row][column] {
          res.append(column + 1)
        }
      }
    }
    
    return res.max() ?? 0
  }
}
