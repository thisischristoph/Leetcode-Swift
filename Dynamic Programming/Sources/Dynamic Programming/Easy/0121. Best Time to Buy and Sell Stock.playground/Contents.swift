import UIKit

func maxProfit(_ prices: [Int]) -> Int {
    
    guard prices.count > 1 else { return 0 }
    
    var minPrice = prices[0]
    var profit = 0
    
    for index in 1..<prices.count {
        let currentPrice = prices[index]
        
        if currentPrice - minPrice > profit {
            profit = currentPrice - minPrice
        }
        
        if currentPrice < minPrice {
            minPrice = currentPrice
        }
    }
    
    return profit
}

maxProfit([7,1,5,3,6,4])
