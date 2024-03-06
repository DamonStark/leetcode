class Solution {
    func findKOr(_ nums: [Int], _ k: Int) -> Int {
        var result = 0
        for i in 0 ... 31 {
            var count = 0
            for num in nums {
                if num & (1 << i) == (1 << i) {
                    count += 1
                }
            }
            if count >= k {
                result = result + (1 << i)
            }
        }
        return result
    }
}
