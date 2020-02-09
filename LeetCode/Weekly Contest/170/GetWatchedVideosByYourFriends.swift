//
//  GetWatchedVideosByYourFriends.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 2/8/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func watchedVideosByFriends(_ watchedVideos: [[String]], _ friends: [[Int]], _ id: Int, _ level: Int) -> [String] {
    var queue: Set<Int> = [id]
    var count = 0
    var seen = Set(queue)
    while !queue.isEmpty && count < level { // BFS
      count += 1
      var temp: Set<Int> = []
      for i in queue {
        for j in friends[i] {
          guard !seen.contains(j) else { continue }
          temp.insert(j)
          seen.insert(j)
        }
      }
      queue = temp
    }
    
    let ids = Array(queue)
    let allVideos = ids.map { id -> [String] in
      watchedVideos[id]
    }
    var dict: [String: Int] = [:]
    
    // Counting
    for currentVideos in allVideos {
      for video in currentVideos {
        dict[video] = dict[video] == nil ? 1 : dict[video]! + 1
      }
    }
    
    // Sorting
    let sortedDict = dict.sorted { f, s -> Bool in
      if f.value == s.value {
        return f.key < s.key
      }
      return f.value < s.value
    }
    let res = sortedDict.map { tuple -> String in
      tuple.key
    }
    return res
  }
}
