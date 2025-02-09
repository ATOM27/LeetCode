//
//  main.swift
//  Max Consecutive Ones
//
//  Created by Yevhen Mekhedov on 08.02.2025.
//

import Foundation

//Given a binary array nums and an integer k, return the maximum number of consecutive 1's in the array if you can flip at most k 0's.

func longestOnes(_ nums: [Int], _ k: Int) -> Int {
    var currentZeros: Int = 0
    var left: Int = 0
    var answer: Int = 0
    for (right, value) in nums.enumerated() {
        currentZeros += value == 0 ? 1 : 0
        while currentZeros > k {
            if nums[left] == 0 {
                currentZeros -= 1
            }
            left += 1
        }
        answer = max(answer, right - left + 1)
    }
    return answer
}

print(longestOnes([0,0,1,1,0,0,1,1,1,0,1,1,0,0,0,1,1,1,1], 3))
