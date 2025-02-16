//
//  main.swift
//  1208. Get Equal Substrings Within Budget
//
//  Created by Yevhen Mekhedov on 16.02.2025.
//

import Foundation
//https://leetcode.com/problems/get-equal-substrings-within-budget/

func equalSubstring(_ s: String, _ t: String, _ maxCost: Int) -> Int {
    var left = 0
    var currentCost = maxCost
    let s = [Character](s)
    let t = [Character](t)
    var maxSubstingLenght = 0
    
    for right in 0..<s.count {
        let differance = abs(Int(s[right].asciiValue!) - Int(t[right].asciiValue!))
        currentCost -= differance
        while currentCost < 0 && left <= right {
            currentCost += abs(Int(s[left].asciiValue!) - Int(t[left].asciiValue!))
            left += 1
        }
        
        maxSubstingLenght = max(maxSubstingLenght, right - left + 1)
    }
    
    return maxSubstingLenght
}

print(equalSubstring("pxezla", "loewbi", 25))

