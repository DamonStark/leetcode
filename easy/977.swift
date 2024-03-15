class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var res = Array(repeating:0, count:nums.count)
        var k = res.count - 1
        var l = 0
        var r = k
        while l <= r {
            var a = nums[l]
            var b = nums[r]
            if a < 0 { a = abs(a) }
            if b < 0 { b = abs(b) }
            if a > b {
                res[k] = a * a
                l += 1
            }else {
                res[k] = b * b
                r -= 1
            }
            k -= 1
        }
        return res
    }
}
