func combinationSum3(_ k: Int, _ n: Int) -> [[Int]] {
    var ans:[[Int]] = []
    var arr:[Int] = []
    var sum = 0

    func backtracking(_ start:Int, _ level: Int) {
        if sum == n  {
            if arr.count == k {ans.append(arr)}
            return
        }else if sum > n {
            return
        }else {
            if level <= k {
                if start > 9 {return}
                for i in start ... 9 {
                    if sum + i <= n {
                        arr.append(i)
                        sum += i
                        backtracking(i + 1, level + 1)
                        arr.removeLast()
                        sum -= i
                    }
                }
            }
        }
    }
    backtracking(1,1)
    return ans
}
