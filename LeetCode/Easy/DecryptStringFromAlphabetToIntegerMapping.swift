//
//  DecryptStringFromAlphabetToIntegerMapping.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 2/7/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func freqAlphabets(_ s: String) -> String {
    var alph: [Int: String] = [:]
    // MARK: - Filling dict with alphabets
    for number in stride(from: 1, through: 26, by: 1) {
      alph[number] = String(UnicodeScalar(96 + number)!)
    }
    
    var resRevS = ""
    let revS = String(s.reversed())
    var skipper = 0
    for (index, char) in revS.enumerated() {
      guard skipper == 0 else {
        skipper -= 1
        continue
      }
      
      if char == "#" {
        skipper = 2
        let firstIndex = revS.index(revS.startIndex, offsetBy: index + 1)
        let secondIndex = revS.index(revS.startIndex, offsetBy: index + 2)
        let firstChar = revS[firstIndex].description
        let secondChar = revS[secondIndex].description
        resRevS += alph[Int(secondChar + firstChar)!]! // Uphold version
      } else {
        resRevS += alph[Int(char.description)!]!
      }
      
    }
    return String(resRevS.reversed())
  }
}
