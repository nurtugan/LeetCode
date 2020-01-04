//
//  main.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 1/1/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

import Foundation

let solution = Solution()

let l1 = ListNode(1)
let l2 = ListNode(0)
let l3 = ListNode(1)
l1.next = l2
l2.next = l3

let result = solution.getDecimalValue(l1)
print(result)
