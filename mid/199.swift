func rightSideView(_ root: TreeNode?) -> [Int] {
    var rs:[Int] = []
    var queue: [TreeNode] = []
    if root != nil { queue.append(root!) }
    while !queue.isEmpty {
        rs.append(queue.last!.val)
        let size = queue.count
        for i in 0 ..< size {
            let node = queue.removeFirst()
            if node.left != nil {queue.append(node.left!)}
            if node.right != nil {queue.append(node.right!)}
        }
    }
    return rs
}