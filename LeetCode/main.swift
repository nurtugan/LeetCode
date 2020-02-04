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

let root = TreeNode(1)
let left = TreeNode(2)
let right = TreeNode(3)
root.left = left
root.right = right

let leftleft = TreeNode(4)
let leftright = TreeNode(5)
left.left = leftleft
left.right = leftright

let rightleft = TreeNode(6)
right.left = rightleft

let result = solution.maxProduct(root)

let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime




// –––––––––––––––––––––––––––





print(result)
print("Time elapsed: \(timeElapsed * 1000) ms.")

let task = """
Maximum Product of Splitted Binary Tree
"""
print(
  task
    .capitalized
    .replacingOccurrences(of: " ", with: "")
)
