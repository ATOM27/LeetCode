//
//  main.swift
//  FindLenght01
//
//  Created by Yevhen Mekhedov on 05.02.2025.
//

import Foundation

//You are given a binary string s (a string containing only "0" and "1"). You may choose up to one "0" and flip it to a "1". What is the length of the longest substring achievable that contains only "1"?
//
//For example, given s = "1101100111", the answer is 5. If you perform the flip at index 2, the string becomes 1111100111.

func findLenght(_ s: String) -> Int {
    let arr = Array(s)
    var left = 0
    var numberOfZeros = 0
    var answer = 0
    
    for (right, value) in arr.enumerated() {
        numberOfZeros += value == "0" ? 1 : 0
        while numberOfZeros > 1 {
            numberOfZeros -= arr[left] == "0" ? 1 : 0
            left += 1
        }
        
        answer = max(answer, right - left + 1)
    }
    
    return answer
}

print(findLenght("1101100111"))
