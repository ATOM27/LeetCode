//
//  main.swift
//  303. Range Sum Query - Immutable
//
//  Created by Yevhen Mekhedov on 19.02.2025.
//

import Foundation
//https://leetcode.com/problems/range-sum-query-immutable/description/

class NumArray {
    let prefix: [Int]
    let nums: [Int]
    init(_ nums: [Int]) {
        var prefix = nums
        for i in 1..<nums.count {
            prefix[i] += prefix[i - 1]
        }
        self.prefix = prefix
        self.nums = nums
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        return prefix[right] - prefix[left] + nums[left]
    }
}

let numArr = NumArray([-2, 0, 3, -5, 2, -1])
print(numArr.sumRange(0, 5))
