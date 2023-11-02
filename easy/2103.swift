class Solution {
    func countPoints(_ rings: String) -> Int {
        var status = Array(repeating: 0, count:10)
        let charArray = Array(rings.unicodeScalars)
        for i in 0 ..< charArray.count / 2 {
            let color = charArray[2 * i]
            let index = Int(String(charArray[2 * i + 1]))!
            var value = 1
            if color == "B" {
                value = 1
            }else if color == "G" {
                value = 1 << 1
            }else if color == "R" {
                value = 1 << 2
            }
            status[index] =  status[index] | value
        }
        var count = 0
        for j in status {
            if j == (1 << 3 ) - 1 {
                count = count + 1
            }
        }
        return count
    }
}
