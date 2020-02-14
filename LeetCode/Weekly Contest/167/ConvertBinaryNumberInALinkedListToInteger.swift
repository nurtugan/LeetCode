//
//  ConvertBinaryNumberInALinkedListToInteger.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 2/13/20.
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
    var binaryNums: [Int] = []
    var head = head
    while head != nil {
      binaryNums.append(head!.val)
      head = head?.next
    }
    let num = binaryNums.reduce("") { res, num -> String in
      var res = res
      res += "\(num)"
      return res
    }
    return Int(num, radix: 2)!
  }
}

