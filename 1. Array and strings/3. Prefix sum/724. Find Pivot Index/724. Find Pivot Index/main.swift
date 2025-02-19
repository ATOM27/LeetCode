//
//  main.swift
//  724. Find Pivot Index
//
//  Created by Yevhen Mekhedov on 19.02.2025.
//

import Foundation

func pivotIndex(_ nums: [Int]) -> Int {
    var prefix: [Int] = nums
    for i in 1..<prefix.count {
        prefix[i] += prefix[i - 1]
    }
    
    for i in 0..<prefix.count {
        let leftSum = prefix[i]
        let rightSum = prefix[prefix.count - 1] - prefix[i] + nums[i]
        
        if leftSum == rightSum {
            return i
        }
    }
    return -1
}

print(pivotIndex([-1,-1,0,1,1,0]))

