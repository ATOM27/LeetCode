//
//  main.swift
//  CombineTwoSortedArrays
//
//  Created by Yevhen Mekhedov on 01.02.2025.
//

import Foundation

func combine(arr1: [Int], arr2: [Int]) -> [Int] {
    var i = 0
    var j = 0
    
    var resArray = [Int]()
    
    while i <= arr1.count - 1 && j <= arr2.count - 1 {
        if arr1[i] >= arr2[j] {
            resArray.append(arr2[j])
            j += 1
        } else {
            resArray.append(arr1[i])
            i += 1
        }
    }
    
    while i <= arr1.count - 1 {
        resArray.append(arr1[i])
        i += 1
    }
    
    while j <= arr2.count - 1 {
        resArray.append(arr2[j])
        j += 1
    }
    
    return resArray
}

print(combine(arr1: [1,2,3,5,6,8], arr2: [1,2,3,12]))

