//
//  main.swift
//  find_best_subarray
//
//  Created by Yevhen Mekhedov on 05.02.2025.
//

import Foundation

//Given an integer array nums and an integer k, find the sum of the subarray with the largest sum whose length is k


func find_best_subarray(arr: [Int], target: Int) -> Int {
    var answer = 0
    for i in 0..<target {
        answer += arr[i]
    }
    
    var sum = answer
    for i in target..<arr.count {
        sum += arr[target]
        sum -= arr[i - target]
        
        answer = max(sum, answer)
    }
    
    return answer
}

print(find_best_subarray(arr: [3,-1,4,12,-8,5,6], target: 4))

