//
//  main.swift
//  reverseWords
//
//  Created by Yevhen Mekhedov on 16.02.2025.
//

import Foundation

//Given a string s, reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.

func reverseWords(_ s: String) -> String {
    var firstWordIndex = 0
    var lastWordIndex = 0
    var lastSpaceIndex = -1
    var returnString: [Character] = [Character](s)
    for index in 0..<returnString.count {
        if returnString[index] == " " || index == returnString.count - 1 {
            firstWordIndex = lastSpaceIndex + 1
            lastWordIndex = index == returnString.count - 1 ? index : index - 1
            while firstWordIndex < lastWordIndex {
                let temp = returnString[lastWordIndex]
                returnString[lastWordIndex] = returnString[firstWordIndex]
                returnString[firstWordIndex] = temp
                firstWordIndex += 1
                lastWordIndex -= 1
            }
            lastSpaceIndex = index
        }
    }
    return String(returnString)
}


print(reverseWords("Let's take LeetCode contest"))
