class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var l = 0 
        var r = nums.count - 1
        var ans = -1
        while l <= r && r < nums.count {
            let index = l + (r - l) / 2
            let value = nums[index]
            if value == target {
                ans = index
                break
            }else if value > target {
                r = index - 1
            }else {
                l = index + 1
            }
        }
        return ans
    }
}
