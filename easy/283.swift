class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var i = 0
        var j = 0
        while j < nums.count {
            if nums[j] != 0 {
                nums[i] = nums[j]
                i = i + 1
            }
            j = j + 1
        }
        while i < nums.count {
            nums[i] = 0
            i = i + 1
        }
    }
}
