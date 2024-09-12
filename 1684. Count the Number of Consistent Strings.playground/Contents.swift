class Solution {
    func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
        var avbl = [Character: Bool]()
        var result = 0
        
        for i in [Character](allowed) {
            avbl[i] = true
        }
        
        for word in words {
            result += 1
            for w in [Character](word) {
                if avbl[w] == nil {
                    result -= 1
                    break
                }
            }
        }
        
        return result
    }
}
