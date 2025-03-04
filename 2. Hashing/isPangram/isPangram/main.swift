//
//  main.swift
//  isPangram
//
//  Created by Yevhen Mekhedov on 04.03.2025.
//

import Foundation

func checkIfPangram(_ sentence: String) -> Bool {
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    let set = Set<Character>(alphabet)
    let s = Set<Character>(sentence)
    return set.isSubset(of: s)
}

print(checkIfPangram("thequickbrownfoxjupsoverthelazydog"))
