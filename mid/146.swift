class LRUCache {
    private let capacity: Int
    private var cache: [Int: Node] = [:]
    private var head: Node?
    private var tail: Node?
    init(_ capacity: Int) {
        self.capacity = capacity
    }
    
    func get(_ key: Int) -> Int {
        if let node = cache[key] {
            moveToHead(node)
            return node.value
        }else {
            return -1
        }
    }
    
    func put(_ key: Int, _ value: Int) {
        if let node = cache[key] {
            node.value = value
            moveToHead(node)
        }else {
            let newNode = Node(key: key, value: value)
            cache[key] = newNode
            if cache.count > capacity {
                if let tail = tail {
                    cache.removeValue(forKey: tail.key)
                    removeNode(tail)
                }
            }
            addToHead(newNode)
        }
    }
    
    private func moveToHead(_ node: Node) {
        if node !== head {
            removeNode(node)
            addToHead(node)
        }
    }
    
    private func removeNode(_ node: Node) {
        if node === head {
            head = node.next
        }
        if node === tail {
            tail = node.prev
        }
        node.prev?.next = node.next
        node.next?.prev = node.prev
    }
    
    private func addToHead(_ node: Node) {
        node.prev = nil
        node.next = head
        head?.prev = node
        head = node
        if tail == nil {
            tail = node
        }
    }
    
    private class Node {
        let key: Int
        var value: Int
        var prev: Node?
        var next: Node?
        init(key: Int, value: Int) {
            self.key = key
            self.value = value
        }
    }
}
