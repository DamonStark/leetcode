class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else { return 0 }
        var maxProfit = 0
        for i in 0 ... (prices.count - 2) {
            let m = prices[i]
            let n = prices[i + 1]
            if n > m {
                maxProfit += n - m
            }
        }
        return maxProfit
    }
}
