//
//  main.swift
//  Minimum Value to Get Positive Step by Step Sum
//
//  Created by Yevhen Mekhedov on 09.02.2025.
//

import Foundation

//Given an array of integers nums, you start with an initial positive value startValue.

//In each iteration, you calculate the step by step sum of startValue plus elements in nums (from left to right).

//Return the minimum positive value of startValue such that the step by step sum is never less than 1

func minStartValue(_ nums: [Int]) -> Int {
    var prefixSum = nums
    for i in 1..<nums.count {
        prefixSum[i] += prefixSum[i - 1]
    }
    var answer = prefixSum.min() ?? 0
    if answer <= 0 {
        answer = abs(answer) + 1
    } else {
        answer = 1
    }
    
    return answer
}

print(minStartValue([2,3,5,-5,-1]))

func minStartValueV2(_ nums: [Int]) -> Int {
    var sum = 0
    var minValue = Int.max
    
    for num in nums {
        sum += num
        minValue = min(minValue, sum)
    }
    
    return minValue < 0 ? abs(minValue) + 1 : 1
}

print(minStartValueV2([2,3,5,-5,-1]))
