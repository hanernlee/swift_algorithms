//: Playground - noun: a place where people can play

import UIKit

let numbers = [1, 2, 4, 6, 8, 9, 11, 13, 16, 17, 20]

func binarySearchForValue(searchValue: Int, array: [Int]) -> Bool {
    
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]
        
        if middleValue == searchValue {
            print(middleIndex)
            return true
        }
        
        if searchValue < middleValue {
            rightIndex = middleIndex - 1
        }
        
        if (searchValue > middleValue) {
            leftIndex = middleIndex + 1
        }
    }
    
    return false
}

print(binarySearchForValue(searchValue: 11, array: numbers))


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

