class Solution {
    func maxArea(_ h: Int, _ w: Int, _ horizontalCuts: [Int], _ verticalCuts: [Int]) -> Int {
        
        var current = 0
        var maxH = 0
        for i in horizontalCuts.sorted() {
            let w = i - current
            current = i
            if w > maxH {maxH = w}
            current = i
        }
        maxH = max(maxH, h - current)
        
        current = 0
        var maxW = 0
        for j in verticalCuts.sorted() {
            let v = j - current
            if v > maxW {maxW = v}
            current = j
        }
        maxW = max(maxW, w - current)

        return (maxH * maxW) % (1000000007)
    }
}
