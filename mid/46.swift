func permute(_ nums: [Int]) -> [[Int]] {
    var ans:[[Int]] = []
    var arr: [Int] = []
    var visited:[Int] = Array(repeating:0, count: nums.count)

    func backtracking() {
        if arr.count == nums.count {
            ans.append(arr)
            return
        }
        for i in 0 ..< nums.count {
            if visited[i] == 1 {continue}
            let val = nums[i]
            arr.append(val)
            visited[i] = 1
            backtracking()
            arr.removeLast()
            visited[i] = 0
        }
    }

    backtracking()
    return ans
}
