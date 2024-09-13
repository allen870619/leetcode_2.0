class Solution {
    func xorQueries(_ arr: [Int], _ queries: [[Int]]) -> [Int] {
        var xorList = [arr[0]]
        for i in 1..<arr.count {
            xorList.append(xorList[i-1] ^ arr[i])
        }
        
        var result = [Int]()
        for query in queries {
            let start = query[0]
            let end = query[1]
            if start == 0 {
                result.append(xorList[end])
            } else {
                result.append(xorList[end] ^ xorList[start-1])
            }
        }
        
        return result
    }
}

