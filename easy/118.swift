class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        if numRows == 1 {return [[1]]}
        if numRows == 2 {return [[1],[1,1]]}
        var result = generate(numRows - 1)
        let lastRow = result.last!
        var row = [1]
        var i = 1 
        while i < lastRow.count {
            row.append(lastRow[i-1] + lastRow[i])
            i = i + 1
        }
        row.append(1)
        result.append(row)
        return result
    }
}
