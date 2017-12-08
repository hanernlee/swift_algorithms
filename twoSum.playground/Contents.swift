//: Playground - noun: a place where people can play

import UIKit

let numbers = [1, 3, 6, 7, 7, 12, 14]

// 1. Brute Force - Nested for-loop : Complexity (n2)
func bruteForceTwoSum(array: [Int], sum: Int) -> Bool {
    for i in 0..<array.count {
        for j in 0..<array.count where j != i {
            print(array[j])
        }
    }
    
}


// 2. Binary Search : Complexity (n log n)

// 3. Move pointer Linear : Complexity (n)
