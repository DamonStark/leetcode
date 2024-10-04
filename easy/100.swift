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
*  递归解
*/
class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil {return true}
        if p == nil || q == nil || p!.val != q!.val {return false}
        return isSameTree(p!.left,q!.left) && isSameTree(p!.right, q!.right)
    }
}

/**
*  迭代解(BFS)
*/
class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        var queue:[TreeNode?] = []
        queue.append(p)
        queue.append(q)
        while !queue.isEmpty {
            let node1 = queue.removeLast()
            let node2 = queue.removeLast()
            if node1 == nil && node2 == nil { continue }
            if node1 == nil || node2 == nil || node1!.val != node2!.val  { return false }
            queue.append(node1!.left)
            queue.append(node2!.left)
            queue.append(node1!.right)
            queue.append(node2!.right)
        }
        return true
    }
}