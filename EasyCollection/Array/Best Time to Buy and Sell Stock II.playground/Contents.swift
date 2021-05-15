class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maximum = 0
        for i in 1..<prices.count {
            if prices[i] > prices[i-1] {
                maximum += prices[i] - prices[i-1]
            }
        }
        return maximum
    }
}
