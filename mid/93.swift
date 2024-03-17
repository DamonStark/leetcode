class Solution {
    func restoreIpAddresses(_ s: String) -> [String] {
        var ans:[String] = []
        var path:[String] = []
        var charArray = s.map{ $0 }

        func backtracking(_ start:Int) {
            if start >= s.count {
                if path.count == 4 {
                    ans.append(path.joined(separator:"."))
                }
                return
            }
            let leftLenght = s.count - start
            if leftLenght > 0 && path.count < 4 {
                for i in  0 ..< min(leftLenght, 3) {
                    let sub = charArray[start ... start + i]
                    if isValidIP(Array(sub)) {
                        path.append(String(sub))
                        backtracking(start + i + 1)
                        path.removeLast()
                    }
                }
            }
        }

        backtracking(0)
        return ans
    }

    func isValidIP(_ charArray:[Character]) -> Bool {
        if charArray.count > 1 && charArray.first! == "0" {return false}
        let str = String(charArray)
        let intValue = Int(str)!
        return intValue <= 255
    }
}
