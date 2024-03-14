class Solution {
    func candy(_ ratings: [Int]) -> Int {
        var array = Array(repeating: 1, count: ratings.count)
        for i in 1 ..< ratings.count {
            if ratings[i] > ratings[i - 1] {
                let value = array[i - 1]
                array[i] = value + 1
            }
        }
        var j = ratings.count - 2
        while j >= 0 {
            if ratings[j] > ratings[j + 1] && array[j] <= array[j + 1] {
                let value = array[j + 1]
                array[j] = value + 1
            }
            j = j - 1
        }
        var sum = 0
        array.map { sum += $0 }
        return sum
    }
}
