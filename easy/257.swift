class Solution {
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        var rs:[String] = []
        if root == nil {return rs}

        var path:[String] = [String(root!.val)]

        func backtracking(_ r:TreeNode) {
            if r.left == nil && r.right == nil {
                rs.append(path.joined(separator:"->"))
                return
            }
            if r.left != nil {
                path.append(String(r.left!.val))
                backtracking(r.left!)
                path.removeLast()
            }
            if r.right != nil {
                path.append(String(r.right!.val))
                backtracking(r.right!)
                path.removeLast()
            }
        }

        backtracking(root!)
        return rs
    }
}