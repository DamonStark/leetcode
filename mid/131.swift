class Solution {
    func partition(_ s: String) -> [[String]] {
        var ans:[[String]] = []
        var path:[String] = []
        var chars = s.map{$0}

        func backtracking(_ start: Int) {
            if start >= s.count {
                ans.append(path)
                return
            }
            let count = s.count - start
            for i in 0 ..< count {
                let subArray = Array(chars[start ... start + i])
                if isPalindrome(subArray) {
                    path.append(String(subArray))
                    backtracking(start + i + 1)
                    path.removeLast()
                }
            }
        }
        backtracking(0)
        return ans
    }
    func isPalindrome(_ charArray: [Character]) -> Bool {
        if charArray.count == 0 {return false}
        if charArray.count == 1 {return true}
        var l = 0
        var r = charArray.count - 1
        var result = true
        while l < r {
            if charArray[l] != charArray[r] {
                result = false
                break
            }
            l += 1
            r -= 1
        }
        return result
    }
}
