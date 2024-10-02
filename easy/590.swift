/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var children: [Node]
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.children = []
 *     }
 * }
 */

class Stack<T> {
    var list:[T] = []
    func push(_ item:T) {
        list.append(item)
    }
    func pop() -> T {
        return list.removeLast()
    }
    func isEmpty() -> Bool {
        return list.isEmpty
    }
}
class Solution {
    func postorder(_ root: Node?) -> [Int] {
    	var rs:[Int] = []
        if root==nil { return rs }
        let stack = Stack<Node>()
        stack.push(root!)
        while stack.isEmpty() == false {
            let node = stack.pop()
            rs.append(node.val)
            if node.children.isEmpty {continue}
            for i in node.children {
                stack.push(i)
            }
        }
        return rs.reversed()
    }
}
