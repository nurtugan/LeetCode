//
//  main.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 1/1/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

import Foundation

let solution = Solution()

let startTime = CFAbsoluteTimeGetCurrent() // Start time

let result = solution.numTeams([1,2,3,4])

let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime // End time




// –––––––––––––––––––––––––––





print(result)
print("Time elapsed: \(timeElapsed * 1000) ms.")

let task = """
Find Lucky Integer in an Array
"""
print(
  task
    .capitalized
    .replacingOccurrences(of: " ", with: "")
)

// TODO:
// 1334. Find the City With the Smallest Number of Neighbors at a Threshold Distance

/* Finish
 1. Weekly 168 (all problems)
 */
