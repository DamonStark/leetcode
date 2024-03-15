class Solution {
    func isValid(_ s: String) -> Bool {
        var array:[String] = []
        for i in s {
            let l = String(i)
            if let top = array.last {
                if l == ")" && top == "(" || l == "}" &&  top == "{" || l == "]" &&  top == "["  {
                    array.removeLast()
                    continue
                }
            }
            array.append(l)
        }

        return array.isEmpty
    }
}
