class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        if s.count < 2 {return s.count}
        var l = 0
        var r = 0
        var map: [Character : Int] = [:]
        var maxLength = 0
        
        for chr in s {
            if let index = map[chr] {
                let length = r - l
                maxLength = max(maxLength, length)
                l = max(index + 1,l)
            }
            map[chr] = r
            r = r + 1
        }
        maxLength = max(r-l,maxLength)
        return maxLength
    }
}
