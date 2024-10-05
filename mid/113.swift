class Solution {
    func pathSum(_ root: TreeNode?, _ targetSum: Int) -> [[Int]] {
        var rs: [[Int]] = []
        if root == nil {return rs}
        var path: [Int] = [root!.val]
        var sum = root!.val

        func backtracking(_ root: TreeNode) {
            if root.left == nil && root.right == nil {
                if sum == targetSum {
                    rs.append(path)
                }
                return
            }
            
            if root.left != nil {
                path.append(root.left!.val)
                sum = sum + root.left!.val
                backtracking(root.left!)
                path.removeLast()
                sum = sum - root.left!.val
            }
            if root.right != nil {
                path.append(root.right!.val)
                sum = sum + root.right!.val
                backtracking(root.right!)
                path.removeLast()
                sum = sum - root.right!.val
            }   
        }
        backtracking(root!)
        return rs
    }
}