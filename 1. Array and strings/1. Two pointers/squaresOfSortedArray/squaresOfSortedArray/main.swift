//
//  main.swift
//  squaresOfSortedArray
//
//  Created by Yevhen Mekhedov on 01.02.2025.
//

import Foundation

//first version


//func sortedSquares(_ nums: [Int]) -> [Int] {
//   var i = 0
//   var anotherNum = [Int]()
//   
//   while nums[i] < 0 {
//       anotherNum.append(nums[i] * nums[i])
//       if nums.count - 1 > i + 1 {
//          i += 1
//       } else {
//           break
//       }
//   }
//   
//   anotherNum.reverse()
//   let nums = Array(nums[(anotherNum.count)..<nums.count]).map({ $0 * $0 })
//   i = 0
//   var j = 0
//   
//   var resArr = [Int]()
//   
//   while i <= anotherNum.count - 1 && j <= nums.count - 1 {
//       if anotherNum[i] >= nums[j] {
//           resArr.append(nums[j])
//           j += 1
//       } else {
//           resArr.append(anotherNum[i])
//           i += 1
//       }
//   }
//   
//   while i <= anotherNum.count - 1 {
//       resArr.append(anotherNum[i])
//       i += 1
//   }
//   
//   while j <= nums.count - 1 {
//       resArr.append(nums[j])
//       j += 1
//   }
//   
//   return resArr
//   }
//}

//second version

func sortedSquares(_ nums: [Int]) -> [Int] {
    var i = 0
    var j = nums.count - 1
    var res = [Int]()
    
    while i <= j {
        if abs(nums[i]) >= abs(nums[j]) {
            res.append(nums[i] * nums[i])
            i += 1
        } else {
            res.append(nums[j] * nums[j])
            j -= 1
        }
    }
    
    return res.reversed()
}


print(sortedSquares([-7,-3,2,3,11]))

