func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
    var result = 0
    if root == nil { return result }
    if root!.val >= low && root!.val <= high { result = result + root!.val }
    if root!.val < high {
        result = result + rangeSumBST(root!.right, low, high)
    }
    if root!.val > low {
        result = result + rangeSumBST(root!.left, low, high)
    }
    return result
}
