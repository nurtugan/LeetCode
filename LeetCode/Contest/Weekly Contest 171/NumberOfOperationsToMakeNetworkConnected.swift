//
//  NumberOfOperationsToMakeNetworkConnected.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 2/6/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

// Error: Time Limit Exceeded
extension Solution {
  private func findParent(par: [Int], i: Int) -> Int {
    var par = par
    if par[i] == i { return i }
    par[i] = findParent(par: par, i: par[i])
    return par[i]
  }
  
  func makeConnected(_ n: Int, _ connections: [[Int]]) -> Int {
    var parent = Array(0..<n)
    let m = connections.count
    var components = 0
    var extraEdge = 0
    for i in stride(from: 0, to: m, by: 1) {
      let p1 = findParent(par: parent, i: connections[i][0])
      let p2 = findParent(par: parent, i: connections[i][1])
      if p1 == p2 { extraEdge += 1 }
      else { parent[p1] = p2 }
    }
    for i in stride(from: 0, to: n, by: 1) {
      if parent[i] == i { components += 1 }
    }
    return (extraEdge >= components - 1) ? components - 1 : -1
  }
}
