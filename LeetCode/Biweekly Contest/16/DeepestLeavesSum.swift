//
//  DeepestLeavesSum.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 2/10/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  private func maxDepth(_ root: TreeNode?) -> Int {
    guard root != nil else {
      return 0
    }
    return 1 + max(maxDepth(root!.left), maxDepth(root!.right))
  }
  
  func deepestLeavesSum(_ root: TreeNode?) -> Int {
    let _maxDepth = maxDepth(root)
    var sum = 0
    
    func bfs(_ root: TreeNode?, depth: Int) {
      guard root != nil else { return }
      if depth == 1 {
        sum += root!.val
      } else if depth > 1 {
        bfs(root?.left, depth: depth - 1)
        bfs(root?.right, depth: depth - 1)
      }
    }
    
    bfs(root, depth: _maxDepth)
    
    return sum
  }
}
