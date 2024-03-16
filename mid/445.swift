class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var reverseL1 = reverseList(l1)
        var reverseL2 = reverseList(l2)
        var fake = ListNode()
        var list:ListNode? = fake
        var plusOne = false
        while reverseL1 != nil && reverseL2 != nil {
            var val = reverseL1!.val + reverseL2!.val + (plusOne ? 1 : 0)
            if val > 9 {
                val = val % 10
                plusOne = true
            }else {
                plusOne = false
            }
            list!.next = ListNode(val)
            list = list!.next
            reverseL1 = reverseL1!.next
            reverseL2 = reverseL2!.next
        }
        if reverseL1 != nil || reverseL2 != nil {
            list!.next = reverseL1 != nil ? reverseL1 : reverseL2

            if plusOne {
                var pre = list
                list = list!.next!

                while list != nil {
                    if list!.val < 9 {
                        list!.val += 1
                        plusOne = false
                        break
                    }else {
                        list!.val = 0
                    }
                    pre = list
                    list = list!.next
                }
                if plusOne == true { pre!.next = ListNode(1) }
            }
        }else {
            if plusOne == true { list!.next = ListNode(1) }
        }
        
        list = reverseList(fake.next!)
        return list
    }
    func reverseList(_ list: ListNode?) -> ListNode? {
        var l = list 
        var rs:ListNode? = nil
        while l != nil {
            var temp = l!.next
            l!.next = rs
            rs = l
            l = temp
        }
        return rs
    }
}
