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

/**
*   递归
*/
class Solution {
    func minDepth(_ root: TreeNode?) -> Int {
        if root == nil {return 0}        
        if root!.left == nil && root!.right == nil {return 1}
        if root!.left == nil || root!.right == nil {
            return 1 + minDepth(root!.left == nil ? root!.right : root!.left)
        }
        return 1 + min(minDepth(root!.left),minDepth(root!.right))
    }
}

/**
*   BFS
*/
class Solution {
    func minDepth(_ root: TreeNode?) -> Int {
        var level = 0
        if root != nil {
            var queue: [TreeNode] = []
            queue.append(root!)
            while !queue.isEmpty {
                level = level + 1

                let size = queue.count
                for i in 0 ..< size {
                    let node = queue.removeFirst()
                    if node.left != nil {
                        queue.append(node.left!)
                    }
                    if node.right != nil {
                        queue.append(node.right!)
                    }
                    if node.left == nil && node.right == nil {
                        return level
                    }
                }
            }
        }
        return level
    }
}
