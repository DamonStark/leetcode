class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        guard nums.count > 0 else { return 0 }
        var maxSum = nums.first!
        var pre = 0
        for num in nums {
            pre = max(pre + num ,num)
            maxSum = max(maxSum, pre)
        }
        return maxSum
    }
}
