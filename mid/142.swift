/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func detectCycle(_ head: ListNode?) -> ListNode? {
        if head == nil || head!.next == nil {return nil}
        var list = head
        var fast = head
        var slow = head

        var find = false
        while fast != nil && slow != nil {
            slow = slow!.next
            fast = fast!.next
            if fast != nil {fast = fast!.next}

            if fast === slow {
                find = true
                break
            }
        }
        if find == false {return nil}
        fast = head
        while fast !== slow {
            fast = fast!.next
            slow = slow!.next
        }
        return slow
    }
}
