class Solution {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var ans:[[Int]] = []
        let sorted = candidates.sorted()

        var arr:[Int] = []
        var sum = 0
        var visited = Array(repeating:0, count: sorted.count)

        func backtracking(_ start:Int) {
            if sum == target {
                ans.append(arr)
                return
            }
            for i in start ..< sorted.count {
                let val = sorted[i]
                if i > 0 && sorted[i] == sorted[i - 1] && visited[i - 1] == 0 {
                    continue
                }
                if sum + val <= target {
                    arr.append(val)
                    visited[i] = 1
                    sum += val
                    backtracking(i + 1)
                    
                    arr.removeLast()
                    visited[i] = 0
                    sum -= val
                }
            }
        }
        backtracking(0)
        return ans
    }
}
