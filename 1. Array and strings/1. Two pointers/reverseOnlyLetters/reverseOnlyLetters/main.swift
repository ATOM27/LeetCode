//
//  main.swift
//  reverseOnlyLetters
//
//  Created by Yevhen Mekhedov on 16.02.2025.
//

import Foundation

func reverseOnlyLetters(_ s: String) -> String {
    var leftIndex = 0
    var characters = [Character](s)
    var rightIndex = characters.count - 1
    
    while leftIndex < rightIndex {
        if !characters[leftIndex].isLetter {
            leftIndex += 1
            continue
        }
        if !characters[rightIndex].isLetter {
            rightIndex -= 1
            continue
        }
        
        let temp = characters[leftIndex]
        characters[leftIndex] = characters[rightIndex]
        characters[rightIndex] = temp
        leftIndex += 1
        rightIndex -= 1
    }
    return String(characters)
}

print(reverseOnlyLetters("Test1ng-Leet=code-Q!"))

