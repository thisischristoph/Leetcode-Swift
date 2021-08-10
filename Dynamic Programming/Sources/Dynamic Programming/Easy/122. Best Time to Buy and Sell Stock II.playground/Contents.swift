import UIKit

func maxProfit(_ prices: [Int]) -> Int {
        
    guard prices.count > 1 else { return 0 }
    
    var profit = 0
    
    for i in 0..<prices.count - 1 {
        let diff = prices[i + 1] - prices[i]
        if diff > 0 {
            profit += diff
        }
    }
    
    return profit
}

maxProfit([7,1,5,3,6,4])
