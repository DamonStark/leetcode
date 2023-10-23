class Solution {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        if s.count < p.count {return []}
        
        let su = s.unicodeScalars.map {Int($0.value)}
        let pu = p.unicodeScalars.map {Int($0.value)}
        
        var map: [Int : Int] = [:]
        for c in pu {
            map[c] = (map[c] ?? 0) + 1
        }
        var l = 0
        var r = 0
        var searchMap: [Int : Int] = [:]
        var rs:[Int] = []
        while r < su.count {
            let char = su[r]
            searchMap[char] = (searchMap[char] ?? 0) + 1
            
            if r - l + 1 == p.count {
                if searchMap == map {
                    rs.append(l)
                }
                let charLeft = su[l]
                if let lc = searchMap[charLeft] {
                    if lc == 1 {
                        searchMap.removeValue(forKey: charLeft)
                    }else {
                        searchMap[charLeft] = searchMap[charLeft]! - 1
                    }
                }
                l = l + 1
            }
            r = r + 1
        }
        return rs
    }
}
