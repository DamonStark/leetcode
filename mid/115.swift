class MinStack {
    var array:[(Int, Int)]
    init() {
        array = []
    }
    
    func push(_ val: Int) {
        if isEmpty() {
            array.append((val,val))
        }else {
            let last = array.last!
            let min = min(last.1, val)
            array.append((val,min))
        }
    }
    
    func pop() {
        array.removeLast()
    }
    
    func top() -> Int {
        if array.isEmpty { return -1 }
        let last = array.last!
        return last.0
    }
    
    func getMin() -> Int {
        if array.isEmpty { return -1 }
        let last = array.last!
        return last.1
    }

    func isEmpty() -> Bool {
        return array.isEmpty
    }
}
