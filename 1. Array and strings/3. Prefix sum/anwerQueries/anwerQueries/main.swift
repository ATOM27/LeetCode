//
//  main.swift
//  anwerQueries
//
//  Created by Yevhen Mekhedov on 08.02.2025.
//

import Foundation

//Given an integer array nums, an array queries where queries[i] = [x, y] and an integer limit, return a boolean array that represents the answer to each query. A query is true if the sum of the subarray from x to y is less than limit, or false otherwise.

//For example, given nums = [1, 6, 3, 2, 7, 2], queries = [[0, 3], [2, 5], [2, 4]], and limit = 13, the answer is [true, false, true]. For each query, the subarray sums are [12, 14, 12].

func answerQueries(nums:[Int], query: [[Int]], limit: Int) -> [Bool] {
    var prefixSum = [nums[0]]
    for i in 1..<nums.count {
        prefixSum.append(nums[i] + prefixSum[prefixSum.count - 1])
    }
    var result: [Bool] = []
    for singleQuery in query {
        let right = singleQuery[1]
        let left = singleQuery[0]
        let sum = prefixSum[right] - prefixSum[left] + nums[left]
        result.append(sum < limit)
    }
    return result
}

print(answerQueries(nums: [1, 6, 3, 2, 7, 2], query: [[0, 3], [2, 5], [2, 4]], limit: 13))
