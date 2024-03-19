class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var p1 = m - 1 
        var p2 = n - 1
        var pv =  m + n - 1

        while p2 >= 0 || p1 >= 0 {
            var val = 0
            if p1 == -1 {
                val = nums2[p2]
                p2 -= 1
            }else if p2 == -1 {
                val = nums1[p1]
                p1 -= 1
            }else if nums1[p1] > nums2[p2] {
                val = nums1[p1]
                p1 -= 1
            }else {
                val = nums2[p2]
                p2 -= 1
            }
            nums1[pv] = val
            pv -= 1
        }
    }
}
