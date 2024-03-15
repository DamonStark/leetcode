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
    func deleteNode(_ node: ListNode?) {
        guard node != nil && node!.next != nil else { return }

        var list = node!
        var pre: ListNode? = nil
        while list.next != nil {
            list.val = list.next!.val
            pre = list
            list = list.next!
        }
        pre?.next = nil
    }
}
