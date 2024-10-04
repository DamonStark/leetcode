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
* 递归解
*/
class Solution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        if root == nil {
            return nil
        }
        let temp = root!.left
        root!.left = root!.right
        root!.right = tempx
        invertTree(root!.left)
        invertTree(root!.right)
        return root
    }
}

/**
* DFS迭代
*/

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
class Solution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        let stack = Stack<TreeNode>()
        if root != nil {
            stack.push(root!)
        }
        while !stack.isEmpty() {
            let node = stack.pop()
            if node.right != nil {
                stack.push(node.right!)
            }
            if node.left != nil {
                stack.push(node.left!)
            }
            let tmp = node.left
            node.left = node.right
            node.right = tmp
        }
        return root
    }
}


/**
* BFS迭代
*/
class Solution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        var queue:[TreeNode] = []
        if let head = root {
            queue.append(head)
            while !queue.isEmpty {
                let node = queue.removeFirst()
                if node.left != nil {
                    queue.append(node.left!)
                }
                if node.right != nil {
                    queue.append(node.right!)
                }
                let tmp = node.left
                node.left = node.right
                node.right = tmp
            }
        }
        return root
    }
}
