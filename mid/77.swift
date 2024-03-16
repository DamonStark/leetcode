class Solution {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        var ans:[[Int]] = []
        var arr:[Int] = []
        func backtracking(_ start:Int) {
            if arr.count == k {
                ans.append(arr)
                return
            }
            for i in start ...  n - (k - arr.count) + 1 {
                arr.append(i)
                backtracking(i + 1)
                arr.removeLast()
            }
        }
        var combineArray:[Int] = []
        backtracking(1)
        return ans
    }
}
