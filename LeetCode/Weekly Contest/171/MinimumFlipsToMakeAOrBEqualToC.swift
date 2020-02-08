//
//  MinimumFlipsToMakeAOrBEqualToC.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 2/6/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func convertToBinary(_ number: Int) -> String {
    return String(number, radix: 2)
  }
  
  func fillWithZeros(_ number: String, _ maxLength: Int) -> String {
    let diff = maxLength - number.count
    let zeros = String(Array(repeating: "0", count: diff))
    return zeros + number
  }
  
  func minFlips(_ a: Int, _ b: Int, _ c: Int) -> Int {
    var aStr = convertToBinary(a)
    var bStr = convertToBinary(b)
    var cStr = convertToBinary(c)
    let maxLength = max(aStr.count, bStr.count, cStr.count)
    
    aStr = fillWithZeros(aStr, maxLength)
    bStr = fillWithZeros(bStr, maxLength)
    cStr = fillWithZeros(cStr, maxLength)
    
    let aChars = Array(aStr.map ({ $0.wholeNumberValue! }) )
    let bChars = Array(bStr.map ({ $0.wholeNumberValue! }) )
    let cChars = Array(cStr.map ({ $0.wholeNumberValue! }) )
    
    var count = 0
    
    for index in stride(from: 0, to: maxLength, by: 1) {
      if cChars[index] == 0 {
        if aChars[index] == 1 {
          count += 1
        }
        if bChars[index] == 1 {
          count += 1
        }
      } else {
        if aChars[index] != 1 && bChars[index] != 1 {
          count += 1
        }
      }
    }
    return count
  }
}
