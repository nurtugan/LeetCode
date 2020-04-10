//
//  Design Underground System.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 4/9/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

class UndergroundSystem {
  
  var checkInDict: [Int: (String, Int)] = [:] // Uid - (StationName, Time)
  var checkOutDict: [String: (Int, Int)] = [:] // Route - (TotalTime, Count)
  
  init() {}
  
  func checkIn(_ id: Int, _ stationName: String, _ t: Int) {
    checkInDict[id] = (stationName, t)
  }
  
  func checkOut(_ id: Int, _ stationName: String, _ t: Int) {
    let checkIn = checkInDict[id]!
    let route = checkIn.0 + "_" + stationName
    let checkOut = checkOutDict[route] ?? (0, 0)
    let totalTime = t - checkIn.1
    checkOutDict[route] = (checkOut.0 + totalTime, checkOut.1 + 1)
  }
  
  func getAverageTime(_ startStation: String, _ endStation: String) -> Double {
    let route = startStation + "_" + endStation
    let checkOutTuple = checkOutDict[route]!
    return Double(checkOutTuple.0) / Double(checkOutTuple.1)
  }
}
