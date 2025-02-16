//
//  main.swift
//  Minimum Common Value
//
//  Created by Yevhen Mekhedov on 16.02.2025.
//

import Foundation

//https://leetcode.com/problems/minimum-common-value/description/

//Given two integer arrays nums1 and nums2, sorted in non-decreasing order, return the minimum integer common to both arrays. If there is no common integer amongst nums1 and nums2, return -1.

//Note that an integer is said to be common to nums1 and nums2 if both arrays have at least one occurrence of that integer.

func getCommon(_ nums1: [Int], _ nums2: [Int]) -> Int {
    var i = 0
    var j = 0
    while i < nums1.count && j < nums2.count {
        if nums1[i] < nums2[j] {
            i += 1
        } else if nums2[j] < nums1[i] {
            j += 1
        } else {
            return nums1[i]
        }
    }
    
    return -1
}

print(getCommon([1,2,3,6], [2,3,4,5]))
