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
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil || head!.next == nil {return head}
        var reverseList: ListNode? = nil
        var list = head
        while list != nil {
            var temp = list!.next
            list!.next = reverseList
            reverseList = list
            list = temp
        }
        return reverseList

    }
    func isPalindrome(_ head: ListNode?) -> Bool {
        if head == nil {return false}
        if head!.next == nil {return true}
        var slow = head
        var fast = head
        while slow != nil && fast != nil {
            slow = slow!.next
            fast = fast!.next
            if fast != nil {
                fast = fast!.next
            }
        }
        var reverse = reverseList(slow)
        var list = head
        while reverse != nil {
            if reverse!.val != list!.val {
                return false
            }
            reverse = reverse!.next
            list = list!.next
        }
        return true

    }
}
