//: Playground - noun: a place where people can play

import UIKit

class Node<T> {
    let value: T
    var next: Node?
    
    init(value: T) {
        self.value = value
    }
}

class Stack<T> {
    var top: Node<T>?
    
    func push(_ value: T) {
        let oldTop = top
        top = Node(value: value)
        top?.next = oldTop
    }
    
    func pop() -> T? {
        let currenTop = top
        top = top?.next
        return currenTop?.value
    }
    
    func peek() -> T? {
        return top?.value
    }
}

struct User {
    let name: String
    let username: String
}

let me = User(name: "Christopher", username: "Chris")
let you = User(name: "You", username: "U")

let usersStack = Stack<User>()
usersStack.push(me)
usersStack.push(you)

let firstUserPop = usersStack.pop()
print(firstUserPop?.name ?? "")

let stack = Stack<Int>()
stack.push(1)
stack.push(2)
stack.push(3)

let firstPop = stack.pop()
stack.peek()
let secondPop = stack.pop()
let thirdPop = stack.pop()
let finalPop = stack.pop()

