//
//  main.swift
//  missingNumber
//
//  Created by Yevhen Mekhedov on 05.03.2025.
//

import Foundation

//Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.

func missingNumber(_ nums: [Int]) -> Int {
    let set = Set<Int>(nums)
    var currentNumber = 0
    for _ in 0...set.count {
        if !set.contains(currentNumber) {
            return currentNumber
        }
        currentNumber += 1
    }
    
    return -1
}

print(missingNumber([1,0]))

