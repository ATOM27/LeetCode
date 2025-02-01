//
//  main.swift
//  ReverseString
//
//  Created by Yevhen Mekhedov on 01.02.2025.
//

import Foundation

func reverseString(_ s: inout [Character]) {
    var left = 0
    var right = s.count - 1
    
    while left < right {
        let t = s[left]
        s[left] = s[right]
        s[right] = t
        left += 1
        right -= 1
    }
}

var s: [Character] = ["H","a","n","n","a","h"]
reverseString(&s)
print(s)
