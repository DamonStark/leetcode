class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows < 2 { return s }        
        var rows: [[Character]] = []
        for i in 0 ... numRows {
            rows.append([])
        }
        var i = 0
        var flag = -1
        
        for char in s {
            rows[i].append(char)
            if i == 0 || i == numRows - 1 { flag = -flag }
            i = i + flag
        }
        var chars:[Character] = []
        for row in rows {
            chars.append(contentsOf: row)
        }
        let result = String(chars)
        return result
    }
}
