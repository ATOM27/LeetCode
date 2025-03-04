//
//  main.swift
//  example3
//
//  Created by Yevhen Mekhedov on 04.03.2025.
//

import Foundation

//Given an integer array nums, find all the unique numbers x in nums that satisfy the following: x + 1 is not in nums, and x - 1 is not in nums

func findNumbers(_ nums: [Int]) -> [Int] {
    let set = Set<Int>(nums)
    var returnArray: [Int] = []
    for num in nums {
        if !set.contains(num + 1) && !set.contains(num - 1) {
            returnArray.append(num)
        }
    }
    return returnArray
}

print(findNumbers([2,3,6,7,8,9,11]))

