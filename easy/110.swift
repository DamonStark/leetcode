/**
*   递归解
*/
class Solution {
    func isBalanced(_ root: TreeNode?) -> Bool {
        if root == nil {return true}
        let val = depthOfTree(root!.left) - depthOfTree(root!.right)
        return val >= -1 && val <= 1 && isBalanced(root!.left) && isBalanced(root!.right)
    }
    func depthOfTree(_ root:TreeNode?) -> Int {
        if root == nil {return 0}
        return 1 + max(depthOfTree(root!.left), depthOfTree(root!.right))
    }
}