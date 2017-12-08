//: Playground - noun: a place where people can play

import UIKit
// Binary Search (While Loop)
//let numbers = [1, 2, 4, 6, 8, 9, 11, 13, 16, 17, 20]
//
//func binarySearchForValue(searchValue: Int, array: [Int]) -> Bool {
//
//    var leftIndex = 0
//    var rightIndex = array.count - 1
//
//    while leftIndex <= rightIndex {
//        let middleIndex = (leftIndex + rightIndex) / 2
//        let middleValue = array[middleIndex]
//
//        if middleValue == searchValue {
//            print(middleIndex)
//            return true
//        }
//
//        if searchValue < middleValue {
//            rightIndex = middleIndex - 1
//        }
//
//        if (searchValue > middleValue) {
//            leftIndex = middleIndex + 1
//        }
//    }
//
//    return false
//}
//
//print(binarySearchForValue(searchValue: 11, array: numbers))

// Binary Search (Recursion)
let numbers = [1, 4, 6, 7, 10, 12, 18, 19, 23, 24, 34, 44, 58, 65]
func binarySearch(array: [Int], key: Int) -> Bool {
    if array.count == 0 { return false }
    
    let minIndex = 0
    let maxIndex = array.count - 1
    let midIndex = maxIndex/2
    let midValue = array[midIndex]
    
    if key < array[minIndex] || key > array[maxIndex] {
        print("\(key) is not in array")
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
        print("\(key) found in the array")
        return true
    }
    
    return false
}

binarySearch(array: numbers, key: 23)


// Linear Complexity
//func linearSearchForValue(searchValue: Int, array: [Int]) -> Bool {
//    for num in array {
//        if num == searchValue {
//            return true
//        }
//    }
//    return false
//}
//
//print(linearSearchForValue(searchValue: 4, array: numbers))


