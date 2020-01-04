//
//  DefangingAnIpAddress.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 1/2/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func defangIPaddr(_ address: String) -> String {
    address.replacingOccurrences(of: ".", with: "[.]")
  }
}
