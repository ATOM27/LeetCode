//
//  main.swift
//  Move Zeros
//
//  Created by Yevhen Mekhedov on 16.02.2025.
//

import Foundation

//https://leetcode.com/problems/move-zeroes/description/

//Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

    //Note that you must do this in-place without making a copy of the array.

//func moveZeroes(_ nums: inout [Int]) {
//    var left = 0
//    var right = nums.count
//    while left < right {
//        if nums[left] == 0 {
//            nums.append(nums.remove(at: left))
//            right -= 1
//        } else {
//            left += 1
//        }
//    }
//}


func moveZeroes(_ nums: inout [Int]) {
    var left = 0
    var right = 0
    while right < nums.count {
        if nums[right] != 0 {
            nums.swapAt(right, left)
            left += 1
        }
        right += 1
    }
}

var nums = [0,1,0,3,12]
moveZeroes(&nums)
print(nums)

