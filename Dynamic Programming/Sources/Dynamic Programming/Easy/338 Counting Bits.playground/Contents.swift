import UIKit

func countBits(_ n: Int) -> [Int] {
    if n == 0 { return [0] }
    
    var count: [Int] = [0,1]
    
    var i: Int = 2
    while i <= n {
        let n1 = i >> 1
        let n2 = i % 2
        count.append(count[n1] + count[n2])
        i += 1
    }
    return count
}

countBits(10)
