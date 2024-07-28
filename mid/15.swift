class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var sortedNums = nums.sorted()
        var rs:[[Int]] = []
        for i in 0 ..< sortedNums.count {
            if sortedNums[i] > 0 {
                break
            }
            if i > 0 && sortedNums[i - 1] == sortedNums[i] {
                continue
            }
            var l = i + 1
            var r = sortedNums.count - 1
            while r > l {
                var val = sortedNums[i] + sortedNums[l] + sortedNums[r]
                if val < 0 {
                    let temp = sortedNums[l]
                    l = l + 1
                    while l < sortedNums.count && sortedNums[l] == temp {
                        l = l + 1
                    }
                }else if val > 0 {
                    let temp = sortedNums[r]
                    r = r - 1
                    while  r > 0 && sortedNums[r] == temp {
                        r = r - 1
                    }
                }
                if val == 0 {
                    rs.append([sortedNums[i],sortedNums[l],sortedNums[r]])
                    var temp = sortedNums[l]
                    l = l + 1
                    while l < sortedNums.count && sortedNums[l] == temp {
                        l = l + 1
                    }
                    temp = sortedNums[r]
                    r = r - 1
                    while r > 0 && sortedNums[r] == temp {
                        r = r - 1
                    }
                }
            }
        }
        return rs
    }
}
