class Solution {
    func diagonalSum(_ mat: [[Int]]) -> Int {
        let tmp = mat.first
        var startIndex = 0
        var endIndex = tmp!.count - 1
        var rowIndex = 0
        var result = 0
        while rowIndex < mat.count {
            let row = mat[rowIndex]
            result = result + row[startIndex]
            if (startIndex != endIndex) {
                result = result + row[endIndex]
            }
            startIndex = startIndex + 1
            endIndex = endIndex - 1
            rowIndex = rowIndex + 1
        }
        return result
    }
}
