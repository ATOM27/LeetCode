//
//  main.swift
//  Reverse Prefix of Word
//
//  Created by Yevhen Mekhedov on 16.02.2025.
//

import Foundation

//https://leetcode.com/problems/reverse-prefix-of-word/description/

//Given a 0-indexed string word and a character ch, reverse the segment of word that starts at index 0 and ends at the index of the first occurrence of ch (inclusive). If the character ch does not exist in word, do nothing.
//
//For example, if word = "abcdefd" and ch = "d", then you should reverse the segment that starts at 0 and ends at 3 (inclusive). The resulting string will be "dcbaefd".


func reversePrefix(_ word: String, _ ch: Character) -> String {
    var left = 0
    var right = 0
    var wordChar = [Character](word)
    while right < wordChar.count {
        if wordChar[right] == ch {
            while left < right {
                let temp = wordChar[left]
                wordChar[left] = wordChar[right]
                wordChar[right] = temp
                left += 1
                right -= 1
            }
            break
        }
        right += 1
    }
    return String(wordChar)
}

print(reversePrefix("rzwuktxcjfpamlonbgyieqdvhs", "s"))
