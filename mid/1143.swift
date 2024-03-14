class Solution {
    func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
        let chars1 = text1.map{ $0 }
        let chars2 = text2.map{ $0 }
        var array:[[Int]] = []
        for i in 0 ... text1.count {
            array.append(Array(repeating:0, count:text2.count + 1))
        }
        for i in 1 ... text1.count {
            for j in 1 ... text2.count {
                if chars1[i - 1] == chars2[j - 1] {
                    array[i][j] = 1 + array[i - 1][j - 1]
                }else {
                    array[i][j] = max(array[i - 1][j],array[i][j - 1])
                }
            }
        }
        return array[chars1.count][chars2.count]
    }
}
