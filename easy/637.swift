func averageOfLevels(_ root: TreeNode?) -> [Double] {
    var queue:[TreeNode] = []
    var rs: [Double] = []
    if root != nil { queue.append(root!) }
    while queue.isEmpty == false {
        let size = queue.count
        var sum:Int = 0
        for i in 0 ..< size {
            let node = queue.removeFirst()
            sum = sum + node.val
            if node.left != nil {
                queue.append(node.left!)
            }
            if node.right != nil {
                queue.append(node.right!)
            }
        }
        rs.append(Double(sum) / Double(size))
    }
    return rs
}
