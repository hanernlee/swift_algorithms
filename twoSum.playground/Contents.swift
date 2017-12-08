//: Playground - noun: a place where people can play

import UIKit

let numbers = [1, 3, 6, 7, 7, 12, 14]

// 1. Brute Force - Nested for-loop : Complexity (n2)
func bruteForceTwoSum(array: [Int], sum: Int) -> Bool {
    for i in 0..<array.count {
        for j in 0..<array.count where j != i {
            if (array[j] + array[i] == sum) {
                print("True: \(array[j]) + \(array[i])")
                return true
            } else {
                print("False: \(array[j]) + \(array[i])")
            }
        }
    }
    return false
}
//bruteForceTwoSum(array: numbers, sum: 9)

// 2. Binary Search : Complexity (n log n)
func twoSumBinarySearch(array: [Int], sum: Int) -> Bool {
    
    for i in 0..<array.count {
        let compliment = sum - array[i]
        
        var tempArray = array
        tempArray.remove(at: i)
        
        let hasCompliment = binarySearch(array: tempArray, key: compliment)
        print("num: \(array[i]) - \(hasCompliment)")
        
        if hasCompliment {
            print("True: num: \(array[i]), compliment: \(compliment)")
            return true
        }
    }

    return false
}
//twoSumBinarySearch(array: numbers, sum: 1)

// 3. Move pointer Linear : Complexity (n)
func twoSumPointers(array: [Int], sum: Int) -> Bool {
    
    var lowIndex = 0
    var highIndex = array.count - 1
    
    while lowIndex < highIndex {
        let sumOfItems = array[lowIndex] + array[highIndex]
        
        if sumOfItems == sum {
            print("Sum of \(array[lowIndex]) and \(array[highIndex]) = \(sum)")
            return true
        } else if sumOfItems < sum {
            lowIndex += 1
        } else if sumOfItems > sum {
            highIndex -= 1
        }
    }
    print("Pointers have now crossed")
    return false
}
twoSumPointers(array: numbers, sum: 26)


// Helper for Binary Search
func binarySearch(array: [Int], key: Int) -> Bool {
    if array.count == 0 { return false }
    
    let minIndex = 0
    let maxIndex = array.count - 1
    let midIndex = maxIndex/2
    let midValue = array[midIndex]
    
    if key < array[minIndex] || key > array[maxIndex] {
        //        print("\(key) is not in array")
        return false
    }
    
    if key > midValue {
        let slice = Array(array[midIndex + 1...maxIndex])
        return binarySearch(array: slice, key: key)
    }
    
    if key < midValue {
        let slice = Array(array[minIndex...midIndex - 1])
        return binarySearch(array: slice, key: key)
    }
    
    if key == midValue {
        //        print("\(key) found in the array")
        return true
    }
    
    return false
}
