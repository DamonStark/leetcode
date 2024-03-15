class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var ans = strs.first!
        for i in 1 ..< strs.count {
            let str = strs[i]
            ans = commonPrefix(ans,str)
            if ans.count == 0 { break }
        }
        return ans
    }
    func commonPrefix(_ str1: String, _ str2: String) -> String {
        var ans = ""
        var i = 0
        let arr1 = str1.map{$0}
        let arr2 = str2.map{$0}
        while i < arr1.count && i < arr2.count {
            if arr1[i] == arr2[i] {
                ans += String(arr1[i])
            }else {
                break
            }
            i += 1
        }
        return ans
    }
}
