//
//  main.swift
//  2351. First Letter to Appear Twice
//
//  Created by Yevhen Mekhedov on 04.03.2025.
//

import Foundation

func repeatedCharacter(_ s: String) -> Character {
    var set = Set<Character>()
    let s = Array<Character>(s)
    for char in s {
        if set.contains(char) {
            return char
        }
        set.insert(char)
    }
    return Character(" ")
}

print(repeatedCharacter("abcdd"))

