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
    func isSymmetric(_ root: TreeNode?) -> Bool {
        guard root != nil else {
            return false
        }
        return check(root, root)
    }
    
    func check (_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil {
            return true
        }
        if (p == nil || q == nil) {
            return false
        }
        return (p!.val == q!.val) && check(p!.left, q!.right) && check(p!.right, q!.left)
    }
}

/**
*   迭代解
*/
func isSymmetric(_ root: TreeNode?) -> Bool {
    if let head = root {
        var queue: [TreeNode?] = []
        queue.append(head.left)
        queue.append(head.right)
        while !queue.isEmpty {
            let left = queue.removeFirst()
            let right = queue.removeFirst()
            if left == nil && right == nil { continue }
            if left == nil || right == nil || left!.val != right!.val { return false }
            queue.append(left!.left)
            queue.append(right!.right)
            queue.append(left!.right)
            queue.append(right!.left)
        }
    }
    return true
}