//
//  FilterRestaurantsByVeganfriendlypriceAndDistance.swift
//  LeetCode
//
//  Created by Nurtugan Nuraly on 2/4/20.
//  Copyright © 2020 XFamily. All rights reserved.
//

extension Solution {
  func filterRestaurants(_ restaurants: [[Int]], _ veganFriendly: Int, _ maxPrice: Int, _ maxDistance: Int) -> [Int] {
    
    var filteredR = restaurants.filter { r -> Bool in
      guard veganFriendly == 1 else {
        return r[3] <= maxPrice && r[4] <= maxDistance
      }
      return r[2] == veganFriendly && r[3] <= maxPrice && r[4] <= maxDistance
    }
    
    filteredR = filteredR.sorted { f, s -> Bool in
      guard f[1] == s[1] else {
        return f[1] > s[1]
      }
      return f[0] > s[0]
    }
    
    let ids = filteredR.map { r -> Int in
      r[0]
    }
    
    return ids
  }
}
