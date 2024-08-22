/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func sortList(_ head: ListNode?) -> ListNode? {
        if head == nil || head!.next == nil {return head}
        var s = head
        var f = head!.next
        while f != nil && f!.next != nil {
            s = s!.next
            f = f!.next!.next
        }
        var r = sortList(s!.next)
        s!.next = nil
        var l = sortList(head)
        
        var dommy = ListNode()
        var list = dommy
        
        while l != nil && r != nil {
            if l!.val < r!.val {
                list.next = l
                l = l!.next
            }else {
                list.next = r
                r = r!.next
            }
            list = list.next!
        }
        if l != nil {list.next = l}
        if r != nil {list.next = r}
        return dommy.next
    }
}
