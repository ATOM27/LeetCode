//
//  main.swift
//  CountingElements
//
//  Created by Yevhen Mekhedov on 05.03.2025.
//

import Foundation

func countElements(_ arr: [Int]) -> Int {
    let set = Set(arr)
    var result = 0
    for num in arr {
        if set.contains(num + 1) {
            result += 1
        }
    }
    
    return result
}

print(countElements([1,1,2,2]))

