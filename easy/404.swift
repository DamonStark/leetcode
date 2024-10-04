/**
* 递归解
*/
class Solution {
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        if root == nil {return 0}
        var rs = 0
        var list:[(TreeNode, Bool)] = []
        list.append((root!, false))
        while !list.isEmpty {
            let nodeUnit = list.removeFirst()
            let node = nodeUnit.0
            if node.left == nil && node.right == nil && nodeUnit.1 == true {
                rs = rs + node.val
            }
            if node.left != nil {list.append((node.left!, true))}
            if node.right != nil {list.append((node.right!, false))}
        }
        return rs
    }
}

/**
* 迭代解
*/
class Solution {
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        if root == nil || root!.left == nil && root!.right == nil {return 0}
        var rs = 0
        rs = rs + sumOfLeftLeaves(root!.right)
        if root!.left != nil && root!.left!.left == nil && root!.left!.right == nil {
            rs = rs + root!.left!.val
        }else {
            rs = rs + sumOfLeftLeaves(root!.left)
        }
        return rs
    }
}