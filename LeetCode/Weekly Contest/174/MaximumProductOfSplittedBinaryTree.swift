//
//  MaximumProductOfSplittedBinaryTree.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 2/3/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

final class TreeNode {
  public var val: Int
  public var left: TreeNode?
  public var right: TreeNode?
  public init(_ val: Int) {
    self.val = val
    self.left = nil
    self.right = nil
  }
}

// Function to find sum of all the element
extension Solution {
  func maxProduct(_ root: TreeNode?) -> Int {
    var total = 0, res = 0
    
    func s(_ root: TreeNode?) -> Int {
      guard let root = root else { return 0 }
      let (left, right) = (s(root.left), s(root.right))
      let maxLeftRight = max(left * (total - left), right * (total - right))
      res = max(res, maxLeftRight)
      return root.val + left + right
    }
    
    total = s(root)
    _ = s(root)
    
    return res % Int(1e9 + 7)
  }
}
