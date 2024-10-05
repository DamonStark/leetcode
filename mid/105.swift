class Solution {
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        if preorder.count == 0 {return nil}
        let root =  TreeNode(preorder.first!)
        if preorder.count == 1 {return root}

        let index = inorder.firstIndex(of:preorder.first!)!
        let leftOfInorder = Array(inorder[0 ..< index])
        let rightOfInorder = Array(inorder[index ..< inorder.count].dropFirst())

        let leftOfPreOrder = Array(preorder[0 ... index].dropFirst())
        let rightOfPreOrder = Array(preorder[index ..< preorder.count].dropFirst())
        root.left = buildTree(leftOfPreOrder,leftOfInorder)
        root.right = buildTree(rightOfPreOrder,rightOfInorder)

        return root
    }
}