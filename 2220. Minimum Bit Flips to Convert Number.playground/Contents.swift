class Solution {
    func minBitFlips(_ start: Int, _ goal: Int) -> Int {
        var result = start ^ goal
        var count = 0
        
        while result != 0 {
            if result % 2 == 1{
                count += 1
            }
            result  /= 2
        }
        return count
    }
}

class Solution2 {
    func minBitFlips(_ start: Int, _ goal: Int) -> Int {
        return (start ^ goal).nonzeroBitCount
    }
}

let sol = Solution()
print(sol.minBitFlips(15, 8))
