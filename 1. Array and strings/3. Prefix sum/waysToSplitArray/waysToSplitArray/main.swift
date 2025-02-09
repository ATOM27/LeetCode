//
//  main.swift
//  waysToSplitArray
//
//  Created by Yevhen Mekhedov on 08.02.2025.
//

import Foundation

//Given an integer array nums, find the number of ways to split the array into two parts so that the first section has a sum greater than or equal to the sum of the second section. The second section should have at least one number.


func waysToSplitArray(nums: [Int]) -> Int {
    var prefixSum = [nums[0]]
    
    for i in 1..<nums.count {
        prefixSum.append(nums[i] + prefixSum[prefixSum.count - 1])
    }
    
    var answer = 0
    for index in 0..<prefixSum.count - 1 {
        let leftSum = prefixSum[index]
        
        let rightSum = prefixSum[prefixSum.count - 1] - prefixSum[index]
        if leftSum >= rightSum {
            answer += 1
        }
    }
    
    return answer
}

print(waysToSplitArray(nums: [2,3,1,0]))


func waysToSplitArray2(nums: [Int]) -> Int {
    var leftSum = 0
    var answer = 0
    let totalArraySum = nums.reduce(0, +)
    
    for index in 0..<nums.count - 1 {
        leftSum += nums[index]
        
        let rightSum = totalArraySum - leftSum
        if leftSum >= rightSum {
            answer += 1
        }
    }
    
    return answer
}

print(waysToSplitArray2(nums: [2,3,1,0]))
