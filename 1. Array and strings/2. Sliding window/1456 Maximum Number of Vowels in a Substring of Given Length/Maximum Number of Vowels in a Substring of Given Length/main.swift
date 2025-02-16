//
//  main.swift
//  Maximum Number of Vowels in a Substring of Given Length
//
//  Created by Yevhen Mekhedov on 16.02.2025.
//

import Foundation

//https://leetcode.com/problems/maximum-number-of-vowels-in-a-substring-of-given-length/description/

func maxVowels(_ s: String, _ k: Int) -> Int {
    var maxVovels = 0
    let vovelSet = Set<Character>(["a", "e", "i", "o", "u"])
    let charS = [Character](s)
    
    for i in 0..<k {
        if vovelSet.contains(charS[i]) {
            maxVovels += 1
        }
    }
    var localVovels = maxVovels
    for i in k..<charS.count {
        if vovelSet.contains(charS[i-k]) {
            localVovels -= 1
        }
        if vovelSet.contains(charS[i]) {
            localVovels += 1
        }
        
        maxVovels = max(maxVovels, localVovels)
    }
    
    return maxVovels
}

print(maxVowels("abciiidef", 3))

