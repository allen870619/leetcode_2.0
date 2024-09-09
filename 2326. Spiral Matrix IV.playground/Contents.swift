
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func spiralMatrix(_ m: Int, _ n: Int, _ head: ListNode?) -> [[Int]] {
        var array = Array(repeating: Array(repeating: -1, count: n), count: m)
        
        let direction = [(1, 0), (0, 1), (-1, 0), (0, -1)]
        var px = 0, py = 0
        var way = 0
        var node = head
        
        while node != nil {
            array[py][px] = node!.val
            
            px += direction[way].0
            py += direction[way].1
            
            if (px >= n || px < 0 || py >= m || py < 0) || array[py][px] != -1 {
                px -= direction[way].0
                py -= direction[way].1
                way = (way + 1) % 4
                px += direction[way].0
                py += direction[way].1
            }
            node = node?.next
        }
        return array
    }
}
