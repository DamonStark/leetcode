class Solution {
    func buildTree(_ inorder: [Int], _ postorder: [Int]) -> TreeNode? {
        if inorder.count == 0 {return nil}
        let root =  TreeNode(postorder.last!)
        if inorder.count == 1 {return root}

        let index = inorder.firstIndex(of:postorder.last!)!
        let leftOfInorder = Array(inorder[0 ..< index])
        let rightOfInorder = Array(inorder[index ..< inorder.count].dropFirst())

        let leftOfPostOrder = Array(postorder[0 ..< index])
        let rightOfPostOrder = Array(postorder[index ..< postorder.count].dropLast())
        root.left = buildTree(leftOfInorder,leftOfPostOrder)
        root.right = buildTree(rightOfInorder,rightOfPostOrder)

        return root
    }
}