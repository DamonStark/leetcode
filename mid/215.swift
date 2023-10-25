class MinHeap<T: Comparable> {
    var elements:[T] = []
    
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    var count: Int {
        return elements.count
    }
    
    func push(_ value: T) {
        elements.append(value)
        heapifyUp(at: count - 1)
    }
    
    func poll() -> T? {
        guard !isEmpty else {return nil}
        elements.swapAt(0, count - 1)
        let element = elements.removeLast()
        heapifyDown()
        return element
    }
    
    func peek() -> T? {
        return elements.first
    }
    
    func buildHeap(_ array: [T]) {
        elements = array
        for i in stride(from: (count / 2 - 1), through: 0, by: -1) {
            heapifyDown(at: i)
        }
    }
    
    private func heapifyUp(at index: Int) {
        var i = index
        while hasParent(i) && elements[i] < parent(i) {
            elements.swapAt(i, parentIndex(i))
            i = parentIndex(i)
        }
    }
    
    func heapifyDown(at index: Int = 0) {
        var currentIndex = index
        while true {
            let left = 2 * currentIndex + 1
            let right = 2 * currentIndex + 2
            var smallestIndex = currentIndex
            
            if left < count && elements[left] < elements[smallestIndex] {
                smallestIndex = left
            }
            if right < count && elements[right] < elements[smallestIndex] {
                smallestIndex = right
            }
            if smallestIndex == currentIndex {
                break
            }
            elements.swapAt(currentIndex, smallestIndex)
            currentIndex = smallestIndex
        }
    }
    
    private func hasParent(_ index: Int) -> Bool {
        return index > 0
    }
    
    private func parentIndex(_ index: Int) -> Int {
        return (index - 1) / 2
    }
    
    private func parent(_ index: Int) -> T {
        return elements[parentIndex(index)]
    }
    
}


class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        let heap = MinHeap<Int>()
        for i in 0 ..< nums.count {
            if i < k {
                heap.push(nums[i])
            }else if (heap.peek()! < nums[i]) {
                heap.poll()
                heap.push(nums[i])
            }
        }
        return heap.peek()!
    }
}
