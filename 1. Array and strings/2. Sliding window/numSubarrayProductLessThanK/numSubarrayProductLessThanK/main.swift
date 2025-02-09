//
//  main.swift
//  numSubarrayProductLessThanK
//
//  Created by Yevhen Mekhedov on 05.02.2025.
//

import Foundation

// Given an array of integers nums and an integer k, return the number of contiguous subarrays where the product of all the elements in the subarray is strictly less than k.


func numSubarrayProductLessThanK(nums: [Int], k: Int) -> Int {
    var left = 0
    var sum = 1
    var answer = 0
    
    for (right, value) in nums.enumerated() {
        sum *= value
        while sum >= k && left < nums.count - 1 && left <= right {
            sum /= nums[left]
            left += 1
        }
        
        if sum < k {
            answer += right - left + 1
        }
    }
    
    return answer
}

print(numSubarrayProductLessThanK(nums: [1,2,3,4,5], k: 1))
