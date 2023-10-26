typealias CompareBlock = (_ a:Int, _ b:Int) -> Bool
class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var map: [Int:Int] = [:]
        for i in nums {
            map[i] = (map[i] ?? 0) + 1
        }
        
        let heap = MinHeap { a, b in
            return map[a]! < map[b]!
        }
        let array = Array(map.keys)
        for j in 0 ..< array.count  {
            if j < k {
                heap.push(array[j])
            }else if map[array[j]]! > map[heap.peek()!]!  {
                heap.poll()
                heap.push(array[j])
            }
        }
        return heap.elements
    }
}

class MinHeap {
    var elements: [Int] = []
    var compare: CompareBlock
    
    init(compare: @escaping CompareBlock) {
        self.compare = compare
    }
    
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    var count: Int {
        return elements.count
    }
    
    func peek() -> Int? {
        return elements.first
    }
    
    func push(_ element: Int) {
        elements.append(element)
        heapifyUp(count - 1)
    }
    
    func poll() -> Int? {
        if isEmpty {return nil}
        elements.swapAt(0, count - 1)
        let element = elements.removeLast()
        heapifyDown(0)
        
        return element
    }
    
    private func heapifyDown(_ index:Int) {
        let left = (index << 1) + 1
        let right = (index << 1) + 2
        var pos = index
        if left < count && compare(elements[left], elements[pos]) {
            pos = left
        }
        if right < count && compare(elements[right], elements[pos]) {
            pos = right
        }
        if pos != index {
            elements.swapAt(pos, index)
            heapifyDown(pos)
        }
    }
    
    private func heapifyUp(_ index:Int) {
        guard index > 0 else {return}
        let parent = (index - 1) >> 1
        if compare(elements[index], elements[parent]) {
            elements.swapAt(index, parent)
            heapifyUp(parent)
        }
    }
}
