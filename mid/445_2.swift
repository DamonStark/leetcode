class Stack<T> {
    var array:[T] = []

    func push(_ item: T) { array.append(item) }
    func pop() -> T { return array.removeLast() }
    func peak() -> T { return array.last! }
    func isEmpty() -> Bool { return array.isEmpty }
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var stack1 = Stack<Int>()
        var stack2 = Stack<Int>()
        var list1 = l1
        var list2 = l2
        while list1 != nil {
            stack1.push(list1!.val)
            list1 = list1!.next
        }
        while list2 != nil {
            stack2.push(list2!.val)
            list2 = list2!.next
        }
        var list:ListNode? = nil
        var plusOne = false
        while !stack1.isEmpty() || !stack2.isEmpty() {
            var a =  stack1.isEmpty() ? 0 : stack1.pop()
            var b =  stack2.isEmpty() ? 0 : stack2.pop()
            var val = a + b + (plusOne ? 1 : 0)
            if val > 9 {
                val = val % 10
                plusOne = true
            }else {
                plusOne = false
            }
            let node = ListNode(val)
            node.next = list
            list = node
        }
        if plusOne == true {
            let node = ListNode(1)
            node.next = list
            list = node
        }
        return list
    }
}
