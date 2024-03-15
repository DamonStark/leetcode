class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var fake = ListNode()
        fake.next = head

        var slow = fake
        var fast = fake
        for i in 0 ..< n {
            fast = fast.next!
        }
        while fast.next != nil {
            fast = fast.next!
            slow = slow.next!
        }
        slow.next = slow.next!.next
        return fake.next
    }
}
