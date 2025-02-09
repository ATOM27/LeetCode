//
//  main.swift
//  isStringPalindrome
//
//  Created by Yevhen Mekhedov on 01.02.2025.
//

import Foundation

func isPalindrome(array: Array<some Equatable>) -> Bool {
    var left = 0
    var right = array.count - 1
    
    while left < right {
        if array[left] != array[right] {
            return false
        }
        left += 1
        right -= 1
    }
    return true
}

print(isPalindrome(array: Array("abcdcba")))

