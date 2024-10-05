class Solution {
    func constructMaximumBinaryTree(_ nums: [Int]) -> TreeNode? {
        if nums.count == 0 {return nil}
        let index = findIndexOfMax(nums)
        let root = TreeNode(nums[index])
        root.left = constructMaximumBinaryTree(Array(nums[0 ..< index]))
        root.right = constructMaximumBinaryTree(Array(nums[index ..< nums.count].dropFirst()))
        return root
    }
    func findIndexOfMax(_ nums: [Int]) -> Int {
        var index = 0
        var max = nums.first!
        for i in 0 ..< nums.count {
            if nums[i] > max {
                max = nums[i]
                index = i
            }
        }
        return index
    }
}