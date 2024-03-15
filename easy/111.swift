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
    func minDepth(_ root: TreeNode?) -> Int {
        guard root != nil else { return 0}
        var ans = Int.max

        func loop(_ root: TreeNode, _ level:Int) {
            if root.left == nil && root.right == nil {
                ans = min(ans, level)
            }else {
                if root.left != nil { loop(root.left!, level + 1) }
                if root.right != nil { loop(root.right!, level + 1) }
            }
        }

        loop(root!, 1)
        return ans
    }
}
