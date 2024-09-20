class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var l = 0
        var r = nums.count - 1
        while l <= r {
            if nums[l] != val {
                l += 1
            }else {
                if nums[r] != val {
                    nums[l] = nums[r]
                    l += 1
                }
                r = r - 1
            }
        }
        return l
    }
}
