class Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var ans:[[Int]] = []
        var arr:[Int] = []

        func backtracking(_ start:Int) {
            var sum = 0
            arr.map{ sum += $0 }
            if sum == target {
                ans.append(arr)
                return
            }
            for i in start ..< candidates.count {
                let val = candidates[i]
                if sum + val <= target {
                    arr.append(val)
                    backtracking(i)
                    arr.removeLast()
                }
            }
        }
        backtracking(0)
        return ans
    }
}
