class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var i = 0;
        var j = height.count - 1
        var maxArea = 0

        while i < j {
            let m = height[i]
            let n = height[j]
            let area = min(m, n) * (j - i)
            maxArea = max(maxArea, area)
            if m < n {
                i = i + 1
            }else {
                j = j - 1
            }
        }
        return maxArea
    }
}
