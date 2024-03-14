class Solution {
    func letterCombinations(_ digits: String) -> [String] {
        guard digits.count > 0 else { return [] }
        let m = [
            "2": "abc",
            "3": "def",
            "4": "ghi",
            "5": "jkl",
            "6": "mno",
            "7": "pqrs",
            "8": "tuv",
            "9": "wxyz",
        ]
        let numberLetters = digits.map{m[String($0)]!}
        var combinations:[String] = []

        func loop(_ str: String, _ index: Int) {
            if index == numberLetters.count {
                combinations.append(str)
                return
            }
            let currentNumberLetter = numberLetters[index]
            for char in currentNumberLetter {
                loop(str + String(char), index + 1)
            }
        }
        loop("", 0)
        return combinations
    }
}
