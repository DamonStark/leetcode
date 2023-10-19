class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var num = 0
        var count = 0
        for i in nums {
            if count == 0 {num = i}
            if num == i {
                count = count + 1
            }else {
                count = count - 1
            }
        }
        return num
    }
}
