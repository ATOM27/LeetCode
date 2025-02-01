//
//  main.swift
//  isSubsequance
//
//  Created by Yevhen Mekhedov on 01.02.2025.
//

import Foundation

//Given two strings s and t, return true if s is a subsequence of t, or false otherwise.
//
//A subsequence of a string is a sequence of characters that can be obtained by deleting some (or none) of the characters from the original string, while maintaining the relative order of the remaining characters. For example, "ace" is a subsequence of "abcde" while "aec" is not.


func isSubsequance(string: String, anotherString: String) -> Bool {
    let stringArray = Array(string)
    let anotherStringArray = Array(anotherString)
    
    var i = 0
    var j = 0
    
    while i <= stringArray.count - 1 && j <= anotherStringArray.count - 1 {
        if stringArray[i] == anotherStringArray[j] {
            j += 1
        }
        i += 1
    }
    
    return j == anotherStringArray.count
}

print(isSubsequance(string: "abdeasjdhkjgce", anotherString: "ace"))
