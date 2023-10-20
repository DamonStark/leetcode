class Solution {
    func categorizeBox(_ length: Int, _ width: Int, _ height: Int, _ mass: Int) -> String {
        let a = (length >= 10000 || width >= 10000 || height >= 10000 || length * width * height >= 1000000000) ? 1 : 0
        let b = mass >= 100 ? 10 : 0
        let map = [0:"Neither",11:"Both",1:"Bulky",10:"Heavy"]
        return map[a + b]!
    }
}
