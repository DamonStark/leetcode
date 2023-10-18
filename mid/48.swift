import Foundation

class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        let copyMatrix = matrix
        var rowIndex = 0
        while rowIndex < matrix.count {
            let row = copyMatrix[rowIndex]
            var column = 0
            while column < matrix.count {
                matrix[column][matrix.count - rowIndex - 1] = row[column]
                column = column + 1
            }
            rowIndex = rowIndex + 1
        }
    }
}

func logMatrix(_ matrix: [[Int]]) {
    for row in matrix {
        var str = ""
        for i in row {
            str = str + String(i) + "\t"
        }
        print(str)
    }
}

var matrix = [
    [1,2,3],
    [4,5,6],
    [7,8,9]
]

Solution().rotate(&matrix)
logMatrix(matrix)
