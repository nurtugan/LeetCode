//
//  AllElementsInTwoBinarySearchTrees.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 2/9/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  private func inOrder(_ root: TreeNode?) -> [Int] {
    var numbers: [Int] = []
    guard let root = root else { return [] }
    numbers += inOrder(root.left)
    numbers.append(root.val)
    numbers += inOrder(root.right)
    return numbers
  }
  
  func getAllElements(_ root1: TreeNode?, _ root2: TreeNode?) -> [Int] {
    let elements = inOrder(root1) + inOrder(root2)
    return elements.sorted()
  }
}
