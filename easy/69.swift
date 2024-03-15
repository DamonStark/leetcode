class Solution {
    func mySqrt(_ x: Int) -> Int {
        var l = 0
        var r = x
        var ans = -1
        while l <= r {
            let mid = l + (r - l) / 2
            if mid * mid <= x {
                ans = mid
                l = mid + 1
            }else {
                r = mid - 1
            }
        }
        return ans
    }
}
