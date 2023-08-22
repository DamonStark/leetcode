//
//  main.swift
//  20
//
//  Created by mask on 2023/8/22.
//

import Foundation

class Stack<T> {
    var items: [T] = []
    
    func push(item: T) {
        self.items.append(item)
    }
    
    func pop() -> T? {
        return items.popLast()
    }
    
    func peek() -> T? {
        return items.last
    }
    
    var isEmpty: Bool {
        return items.isEmpty
    }
    
    var count: Int {
        return items.count
    }
}

class Solution {
    func isValid(_ s: String) -> Bool {
        if s.count % 2 != 0 {
            return false
        }
            
        var i = 0
        var stack = Stack<Character>()
        for chr in s {
            let top = stack.peek()
            let match = (chr == ")" && top == "(") || (chr == "]" && top == "[") || (chr == "}" && top == "{")
            if match {
                stack.pop()
            }else {
                stack.push(item: chr)
            }
        }
        return stack.isEmpty
    }
}
