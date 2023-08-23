class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.count == 1 {
            return 0
        }
        var min = prices.first
        var profit = 0
        
        var i = 0
        for m in prices {
            let currentProfit = m - min
            if currentProfit > profit {
                profit = currentProfit
            }
            if m < min {
                min = m
            }
        }
        return profit
    }
}
