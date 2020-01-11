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

let result = solution.singleNumber([4,1,2,1,2])

let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime

print(result)
print("Time elapsed: \(timeElapsed * 1000) ms.")

let task = """
Single Number
"""
print(
  task
    .capitalized
    .replacingOccurrences(of: " ", with: "")
)
