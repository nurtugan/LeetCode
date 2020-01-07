//
//  LengthOfLastWord.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 1/5/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func lengthOfLastWord(_ s: String) -> Int {
    var words: [String] = []
    var word: [Character] = []
    for char in s {
      guard char != Character(" ") else {
        clear(word: &word, words: &words)
        continue
      }
      word.append(char)
    }
    clear(word: &word, words: &words)
    return words.last?.count ?? 0
  }
  
  func clear(word: inout [Character], words: inout [String]) {
    guard !word.isEmpty else { return }
    words.append(String(word))
    word = []
  }
}
