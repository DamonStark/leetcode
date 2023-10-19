class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var result: [[Int]] = []
        for i in 1 ... numRows {
            var row = Array(repeating:1, count: i)
            if i > 2 {
                for j in 1 ... (i - 2) {
                    row[j] = result[i-2][j - 1] + result[i-2][j]
                }
            }
            result.append(row)
        }
        return result
    }
}
