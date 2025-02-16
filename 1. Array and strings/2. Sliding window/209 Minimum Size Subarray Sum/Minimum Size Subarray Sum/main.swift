//
//  main.swift
//  Minimum Size Subarray Sum
//
//  Created by Yevhen Mekhedov on 16.02.2025.
//

import Foundation

//https://leetcode.com/problems/minimum-size-subarray-sum/description/

func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
    var left = 0
    var sum = 0
    var answer = Int.max
    for (right,value) in nums.enumerated() {
        sum += value

        while sum >= target && left <= right {
            answer = min(answer, right - left + 1)
            sum -= nums[left]
            left += 1
        }
        
        
    }
    return answer == Int.max ? 0 : answer
}

print(minSubArrayLen(11, [1,1,1,1,1,1]))

