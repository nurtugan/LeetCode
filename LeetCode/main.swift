//
//  main.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 1/1/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

import Foundation

let solution = Solution()

let startTime = CFAbsoluteTimeGetCurrent()

let result = solution.sortedSquares([-4,-1,0,3,10])

let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime

print(result)
print("Time elapsed: \(timeElapsed * 1000) ms.")

let task = """
Squares of a Sorted Array
"""
print(
  task
    .capitalized
    .replacingOccurrences(of: " ", with: "")
)
