//
//  main.swift
//  1732. Find the Highest Altitude
//
//  Created by Yevhen Mekhedov on 19.02.2025.
//

import Foundation
//https://leetcode.com/problems/find-the-highest-altitude/description/

func largestAltitude(_ gain: [Int]) -> Int {
    var prefix: [Int] = [0] + gain
    for i in 1..<prefix.count {
        prefix[i] += prefix[i - 1]
    }
    
    var maxAltitude = prefix[0]
    
    for i in 0..<prefix.count {
        maxAltitude = max(maxAltitude, prefix[i])
    }
    
    return maxAltitude
}

print(largestAltitude([-4,-3,-2,-1,4,3,2]))

