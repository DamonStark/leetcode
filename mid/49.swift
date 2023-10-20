class Solution {
    func reformat(_ str: String) -> String {
        var array: [Character] = []
        for c in str {
            array.append(c)
        }
        array.sort()
        return String(array)
    }
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var map:[String: [String]] = [:]
        for str in strs {
            let key = reformat(str)
            var value = map[key]
            if value == nil {
                value = [str]
            }else {
                value!.append(str)
            }
            map[key] = value!
        }
        return Array(map.values)
    }
}
