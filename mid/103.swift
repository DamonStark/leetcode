func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
    var queue:[TreeNode] = []
    var rs: [[Int]] = []
    if root != nil { queue.append(root!) }
    var reverse = false
    while queue.isEmpty == false {
        let size = queue.count
        var level: [Int] = []
        for i in 0 ..< size {
            let node = queue.removeFirst()
            level.append(node.val)
            if node.left != nil {
                queue.append(node.left!)
            }
            if node.right != nil {
                queue.append(node.right!)
            }
        }
        rs.append(reverse ? level.reversed() : level)
        reverse = !reverse
    }
    return rs
}
