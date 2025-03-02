//
//  main.swift
//  1. Two Sum
//
//  Created by Yevhen Mekhedov on 02.03.2025.
//

import Foundation

//https://leetcode.com/problems/two-sum/description/

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict: [Int: Int] = [:]
    
    for (index, value) in nums.enumerated() {
        let leftNum = target - value
        if let leftNumIndex = dict[leftNum] {
            return [index, leftNumIndex]
        }
        
        dict[value] = index
    }
    return []
}

print(twoSum([3,3], 6))

