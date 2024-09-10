public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func insertGreatestCommonDivisors(_ head: ListNode?) -> ListNode? {
        var movingNode = head
        
        while movingNode?.next != nil {
            guard let currentNode = movingNode, let nextNode = movingNode?.next else { break }
            
            let gcd = gcd(currentNode.val, nextNode.val)
            
            let newNode = ListNode(gcd)
            newNode.next = nextNode
            movingNode?.next = newNode
            movingNode = nextNode
        }
        
        return head
    }
    
    func gcd(_ a: Int, _ b: Int) -> Int {
        if b == 0 {
            return a
        }
        return gcd(b, a % b)
    }
}
