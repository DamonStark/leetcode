class Solution {
    func findBottomLeftValue(_ root: TreeNode?) -> Int {
        var queue: [TreeNode] = [root!]
        var rs = 0
        while !queue.isEmpty {
            let size = queue.count
            var level:[Int] = []
            for i in 0 ..< size {
                let node = queue.removeFirst()
                if node.left != nil {queue.append(node.left!)}
                if node.right != nil {queue.append(node.right!)}
                if i == 0 {
                    rs = node.val
                }
            }
        }
        return rs
    }
}