//
//  ConvertBinaryNumberInALinkedListToInteger.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 1/2/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init(_ val: Int) {
    self.val = val
    self.next = nil
  }
}

extension Solution {
  func getDecimalValue(_ head: ListNode?) -> Int {
    var head = head
    var ans = 0
    while head != nil {
      ans = (ans << 1) | head!.val
      head = head?.next
    }
    return ans
  }
}
