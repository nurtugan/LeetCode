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

let result = solution.repeatedNTimes([1,2,3,3])

let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime

print(result)
print("Time elapsed: \(timeElapsed * 1000) ms.")

let task = """
N-Repeated Element in Size 2N Array
"""
print(
  task
    .capitalized
    .replacingOccurrences(of: " ", with: "")
)
