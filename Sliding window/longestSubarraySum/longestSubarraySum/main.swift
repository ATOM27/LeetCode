//
//  main.swift
//  longestSubarraySum
//
//  Created by Yevhen Mekhedov on 03.02.2025.
//

import Foundation

func longestSubarray(array: [Int], taget: Int) -> Int {
    var sum = 0
    var answer = 0
    var left = 0
    
    for (right, value) in array.enumerated() {
        sum += value
        while sum > taget {
            sum -= array[left]
            left += 1
        }
        
        answer = max(answer, right - left + 1)
    }
    
    return answer
}

print(longestSubarray(array: [3, 1, 2, 7, 4, 2, 1, 1, 5], taget: 8))
