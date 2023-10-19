class Solution {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        if nums.count == 0 {return nil}
        
        let i = nums.count / 2
        let root = TreeNode(nums[i])
        let leftArray = Array(nums.prefix(i))
        let rightArray = Array(nums.suffix(nums.count - i - 1))
        root.left = sortedArrayToBST(leftArray)
        root.right = sortedArrayToBST(rightArray)
        
        return root
    }
}
