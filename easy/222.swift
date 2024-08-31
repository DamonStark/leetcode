/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func countNodes(_ root: TreeNode?) -> Int {
        if root == nil {return 0}
        var l = root?.left
        var r = root?.right
        var ld = 0
        var rd = 0
        while l != nil {
            l = l?.left
            ld = ld + 1
        }
        while r != nil {
            r = r?.right
            rd = rd + 1
        }
        if ld == rd {return 2 << ld - 1}
        return countNodes(root?.left) + countNodes(root?.right) + 1
    }
}
