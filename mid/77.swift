class Solution {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        var ans:[[Int]] = []

        func backtracking(_ start:Int, _ arr:[Int]) {
            if arr.count == k {
                ans.append(arr)
                return
            }
            if start > n { return }
            for i in start ... n {
                var array = arr
                array.append(i)
                backtracking(i + 1, array)
            }
        }
        var combineArray:[Int] = []
        backtracking(1,combineArray)
        return ans
    }
}
