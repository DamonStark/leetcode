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
*   递归解
*/
class Solution {
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        if root == nil {return false}
        if root!.left == nil && root!.right == nil {return root!.val == targetSum}
        return hasPathSum(root!.left, targetSum - root!.val) || hasPathSum(root!.right, targetSum - root!.val)
    }
}

/**
*   回溯解
*/
class Solution {
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        if root == nil {return false}

        var rs = false
        var sum = root!.val

        func backtracking(_ root:TreeNode) {
            if root.left == nil && root.right == nil {
                if sum == targetSum {rs = true}
                return
            }
            if root.left != nil {
                sum = sum + root.left!.val
                backtracking(root.left!)
                sum = sum - root.left!.val
            }
            if root.right != nil {
                sum = sum + root.right!.val
                backtracking(root.right!)
                sum = sum - root.right!.val
            }
        }
        backtracking(root!)
        return rs
    }
}

class Stack<T> {
    var list:[T] = []
    func push(_ item:T) {
        list.append(item)
    }
    func pop() -> T {
        return list.removeLast()
    }
    func isEmpty() -> Bool {
        return list.isEmpty
    }
}

/**
*   迭代解
*   不管那种遍历，保存时一起保存当前节点的路径和即可
*   中序写的少，所以写了个中序。另元组感觉不如直接辅助栈……
*
*/
class Solution {
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        if root == nil {return false}
        var stack = Stack<(TreeNode,Int)>()
        var cur = (root,root!.val)
        while !stack.isEmpty() || cur.0 != nil {
            if cur.0 != nil {
                stack.push((cur.0!,cur.1))
                cur = (cur.0!.left,cur.1 + (cur.0!.left?.val ?? 0))
            }else {
                let node = stack.pop()
                cur = (node.0.right, node.1 + (node.0.right?.val ?? 0))

                if node.0.left == nil && node.0.right == nil && node.1 == targetSum {
                    return true
                }
            }
        }
        return false
    }
}