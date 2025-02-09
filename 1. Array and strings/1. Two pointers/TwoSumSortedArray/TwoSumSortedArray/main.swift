//
//  main.swift
//  TwoSumSortedArray
//
//  Created by Yevhen Mekhedov on 01.02.2025.
//

import Foundation

func twoSum(array: [Int], target: Int) -> Bool {
    var left = 0
    var right = array.count - 1
    
    while left < right {
        let sum = array[left] + array[right]
        if sum > target {
            right -= 1
        } else if sum < target {
            left += 1
        } else {
            return true
        }
    }
    return false
}

print(twoSum(array: [1, 2, 4, 6, 8, 9, 14, 15], target: 3))

