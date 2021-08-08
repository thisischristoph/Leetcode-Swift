import UIKit

func fib(_ n: Int) -> Int {
    
    if n == 0 { return 0 }
    
    var num0 = 0
    var num1 = 1
    
    for num in 0..<n {
        if (num % 2) == 0 {
            num1 = num0 + num1
        } else {
            num0 = num0 + num1
        }
    }
    
    return n % 2 == 0 ? num0: num1
}

fib(0)
fib(1)
fib(2)
fib(3)
fib(4)
fib(5)
fib(6)


