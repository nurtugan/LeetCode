//
//  ConvertBinaryNumberInALinkedListToInteger.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 1/2/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

import Foundation

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
    var binaries = ""
    while head != nil {
      binaries += String(head!.val)
      head = head?.next
    }
    var sum = 0
    var count = binaries.count - 1
    for binary in binaries {
      let square = Int(pow(Double(2), Double(count)))
      let temp = binary.wholeNumberValue! * square
      sum += temp
      count -= 1
    }
    return sum
  }
}
