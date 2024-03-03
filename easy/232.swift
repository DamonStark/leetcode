class Stack<T> {
    var array:[T] = []
    func push(_ item:T) {
        array.append(item)
    }
    func pop() -> T  {
        return array.removeLast()
    }
    func peek() -> T {
        return array.last!
    }
    func size() -> Int {
        return array.count
    }
    func isEmpty() -> Bool {
        return array.isEmpty
    }
}

class MyQueue {

    var inputStack:Stack<Int>
    var outputSatck:Stack<Int>

    init() {
        inputStack = Stack<Int>()
        outputSatck = Stack<Int>()
    }
    
    func push(_ x: Int) {
        inputStack.push(x)
    }
    
    func pop() -> Int {
        if outputSatck.isEmpty() {
            while !inputStack.isEmpty() {
                outputSatck.push( inputStack.pop() )
            }
        }
        return outputSatck.pop()
    }
    
    func peek() -> Int {
        if outputSatck.isEmpty() {
            while !inputStack.isEmpty() {
                outputSatck.push(inputStack.pop())
            }
        }
        return outputSatck.peek()
    }
    
    func empty() -> Bool {
        return inputStack.isEmpty() && outputSatck.isEmpty()
    }
}
