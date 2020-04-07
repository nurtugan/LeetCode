//
//  PrintWordsVertically.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 2/5/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  private func printVertically(_ s: String) -> [String] {
    let words = s.split(separator: " ")
    
    let maxLength = words
      .map ({ word -> Int in
        word.count })
      .max()!
    
    var formattedWords: [String] = []
    
    for index in stride(from: 0, to: maxLength, by: 1) {
      var tempWord = ""
      for word in words {
        if index < word.count {
          let charIndex = word.index(word.startIndex, offsetBy: index)
          let char = word[charIndex]
          tempWord.append(char)
        } else {
          tempWord.append(" ")
        }
      }
      let formattedWord = tempWord.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression)
      formattedWords.append(formattedWord)
    }
    
    return formattedWords
  }
}
