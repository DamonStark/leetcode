class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        var ans:[Int] = []
        guard matrix.count != 0 else { return ans }
        var l = 0
        var t = 0
        var b = matrix.count - 1
        var r = matrix.first!.count - 1
        while true {
            for i in l ... r { ans.append(matrix[t][i]) }
            t += 1
            if t > b {break}
            for j in t ... b { ans.append(matrix[j][r]) }
            r -= 1
            if r < l {break}
            for k in 0 ... r - l { ans.append(matrix[b][r - k]) }
            b -= 1
            if b < t {break}
            for m in 0 ... b - t { ans.append(matrix[b - m][l]) }
            l += 1
            if l > r {break}
        }
        return ans
    }
}
