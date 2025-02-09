//
//  main.swift
//  Maximum Average Subarray
//
//  Created by Yevhen Mekhedov on 08.02.2025.
//

import Foundation
//You are given an integer array nums consisting of n elements, and an integer k.

//Find a contiguous subarray whose length is equal to k that has the maximum average value and return this value. Any answer with a calculation error less than 10-5 will be accepted.



func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
    var currentSum = 0.0
    for i in 0..<k {
        currentSum += Double(nums[i])
    }
    var average = currentSum
    
    for i in k..<nums.count {
        currentSum += Double(nums[i] - nums[i - k])
        average = max(average, currentSum)
    }
    
    return average / Double(k)
}

print(findMaxAverage([5], 1))
