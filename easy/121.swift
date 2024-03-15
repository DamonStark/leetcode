class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0
        var maxPrice = 0
        var index = prices.count - 1
        while index >= 0 {
            let p = prices[index]
            maxPrice = max(maxPrice, p)
            let profit = maxPrice - p
            maxProfit = max(maxProfit, profit)

            index -= 1
        }
        return maxProfit
    }
}}
