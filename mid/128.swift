class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var set = Set(nums)
        var longest = 0
        for j in set {
            if !set.contains(j-1) {
                var long = 1
                var currentNum = j
                while set.contains(currentNum + 1) {
                    currentNum = currentNum + 1
                    long = long + 1
                }
                longest = max(longest, long)
            }
        }
        return longest
    }
}
