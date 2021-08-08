import UIKit
/*:
 
 ## 338. Counting Bits

 Given an integer `n`, return *an array* `ans` *of length* `n + 1` *such that for each* `i` (`0 <= i <= n`)*,* `ans[i]` *is the **number of*** `1`***'s** in the binary representation of* `i`.

  

 **Example 1:**

 ```
 Input: n = 2
 Output: [0,1,1]
 Explanation:
 0 --> 0
 1 --> 1
 2 --> 10
 ```

 **Example 2:**

 ```
 Input: n = 5
 Output: [0,1,1,2,1,2]
 Explanation:
 0 --> 0
 1 --> 1
 2 --> 10
 3 --> 11
 4 --> 100
 5 --> 101
 ```

  

 **Constraints:**

 - `0 <= n <= 105`

  

 **Follow up:**

 - It is very easy to come up with a solution with a runtime of `O(n log n)`. Can you do it in linear time `O(n)` and possibly in a single pass?
 - Can you do it without using any built-in function (i.e., like `__builtin_popcount` in C++)?
 
 */


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

countBits(0)
countBits(1)
countBits(2)
countBits(10)

