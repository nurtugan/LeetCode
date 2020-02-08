//
//  KeyboardRow.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 2/8/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func findWords(_ words: [String]) -> [String] {
    var res: [String] = []
    
    let firstRow = Set("qwertyuiop")
    let secondRow = Set("asdfghjkl")
    
    for word in words {
      var firstCount = 0
      var secondCount = 0
      var thirdCount = 0
      let lowercasedWord = word.lowercased()
      
      for char in lowercasedWord {
        if firstRow.contains(char) {
          firstCount += 1
        } else if secondRow.contains(char) {
          secondCount += 1
        } else {
          thirdCount += 1
        }
      }
      
      if lowercasedWord.count == [firstCount, secondCount, thirdCount].max()! {
        res.append(word)
      }
    }
    return res
  }
}
