class Solution {
    func maxPathSum(_ root: TreeNode?) -> Int {
        var maxSum = Int.min
        dfs(root)

        func dfs(_ root:TreeNode?) -> Int {
            guard root != nil else {return 0}
            let left = dfs(root!.left)
            let right = dfs(root!.right)
            maxSum = max(maxSum, root!.val + left + right)
            return  max((max(left, right) + root!.val), 0)
        }

        return maxSum
    }
}
