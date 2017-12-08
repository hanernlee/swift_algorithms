//: Playground - noun: a place where people can play

import UIKit

// Merge Sort
// Split Arrays
func mergeSort(array: [Int]) -> [Int] {
    
    guard array.count > 1 else { return array }
    
    let leftArray = Array(array[0..<array.count/2])
    let rightArray = Array(array[array.count/2..<array.count])
    
    return merge(left: mergeSort(array: leftArray), right: mergeSort(array: rightArray))
}

func merge(left: [Int], right: [Int]) -> [Int] {
    var mergedArray = [Int]()
    var left = left
    var right = right
    
    while left.count > 0 && right.count > 0 {
        if left.first! < right.first! {
            mergedArray.append(left.removeFirst())
        } else {
            mergedArray.append(right.removeFirst())
        }
    }
    
    return mergedArray + left + right
}
let numbers = [10, 2, 6, 1, 90, 50, 100, 4, 35]
mergeSort(array: numbers)


// Merge Sort Another Approach
//let numbers = [2, 1, 5, 4, 9]
//
//func mergeSort(_ array: [Int]) -> [Int] {
//
//    guard array.count > 1 else { return array }
//
//    let middleIndex = array.count / 2
//
//    let leftArray = mergeSort(Array(array[0..<middleIndex]))
//    let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
//
//    return merge(leftPile: leftArray, rightPile: rightArray)
//}
//
//func merge(leftPile: [Int], rightPile: [Int]) -> [Int] {
//    var leftIndex = 0
//    var rightIndex = 0
//
//    var orderedPile = [Int]()
//
//    while leftIndex < leftPile.count && rightIndex < rightPile.count {
//        if leftPile[leftIndex] < rightPile[rightIndex] {
//            orderedPile.append(leftPile[leftIndex])
//            leftIndex += 1
//        } else if leftPile[leftIndex] > rightPile[rightIndex] {
//            orderedPile.append(rightPile[rightIndex])
//            rightIndex += 1
//        } else {
//            orderedPile.append(leftPile[leftIndex])
//            leftIndex += 1
//            orderedPile.append(rightPile[rightIndex])
//            rightIndex += 1
//        }
//    }
//
////    If control exits from the previous while-loop, it means that either the leftPile or the rightPile has its contents completely merged into the orderedPile. At this point, you no longer need to do comparisons. Just append the rest of the contents of the other array until there is no more to append
//    while leftIndex < leftPile.count {
//        orderedPile.append(leftPile[leftIndex])
//        leftIndex += 1
//    }
//
//    while rightIndex < rightPile.count {
//        orderedPile.append(rightPile[rightIndex])
//        rightIndex += 1
//    }
//
//    return orderedPile
//}
//
//print(mergeSort(numbers))

