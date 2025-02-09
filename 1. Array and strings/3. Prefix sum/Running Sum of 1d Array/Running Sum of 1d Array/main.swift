//
//  main.swift
//  Running Sum of 1d Array
//
//  Created by Yevhen Mekhedov on 09.02.2025.
//

import Foundation

//Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).

func runningSum(_ nums: [Int]) -> [Int] {
    var prefixSum = [nums[0]]
    
    for i in 1..<nums.count {
        prefixSum.append(prefixSum[prefixSum.count - 1] + nums[i])
    }
    
    return prefixSum
}

print(runningSum([1,1,1,1,1]))

