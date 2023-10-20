class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var l = 0
        var r = nums.count - 1
        var rs = nums.count
        while l <= r {
            let mid = (r - l) >> 1 + l
            if nums[mid] >=  target {
                rs = mid
                r = mid - 1
            }else {
                l = mid + 1
            }
        }
        return rs
    }
}
