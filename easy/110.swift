class Solution {
    func isBalanced(_ root: TreeNode?) -> Bool {
        return deep(root) != -1
    }

    func deep(_ root: TreeNode?) -> Int {
        guard root != nil else {return 0}
        let left = deep(root!.left)
        if left == -1 {return -1}
        let right = deep(root!.right)
        if right == -1 {return -1}
        return abs(left - right) <= 1 ? max(left, right) + 1 : -1
    }
