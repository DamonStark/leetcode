public class TreeNode {
     public var val: Int
     public var left: TreeNode?
     public var right: TreeNode?
     public init() { self.val = 0; self.left = nil; self.right = nil; }
     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
         self.val = val
         self.left = left
         self.right = right
     }
 }

/**
*   递归解
*/
class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil {return 0}
        return 1 + max(maxDepth(root!.left),maxDepth(root!.right))
    }
}

/**
* BFS
*/
class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        var rs = 0
        if let head = root {
            var queue:[TreeNode] = []
            queue.append(head)
            while !queue.isEmpty {
                let size = queue.count 
                for i in 0 ..< size {
                    let node = queue.removeFirst()
                    if node.left != nil {queue.append(node.left!)}
                    if node.right != nil {queue.append(node.right!)}
                }
                rs = rs + 1
            }
        }
        return rs
    }
}