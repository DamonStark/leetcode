class Solution {

    let map:[String:String] = [
            "2":"abc",
            "3":"def",
            "4":"ghi",
            "5":"jkl",
            "6":"mno",
            "7":"pqrs",
            "8":"tuv",
            "9":"wxyz"]

    func letterCombinations(_ digits: String) -> [String] {
        var combinations:[String] = []
        guard digits.count > 0 else { return combinations }
        var str = ""
        bt(&combinations, digits, 0, &str)
        return combinations
    }

    func bt(_ combinations: inout [String], _ digits:String, _ index:Int, _ str: inout String ) {
        if index == digits.count {
            combinations.append(str)
            return
        }
        let number = String(digits[digits.index(digits.startIndex, offsetBy:index)])
        let chars = map[number]!
        for char in chars {
            str = str + String(char)
            bt(&combinations, digits, index + 1,&str)
            str.removeLast()
        }
    }
}

