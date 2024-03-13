func maximumOddBinaryNumber(_ s: String) -> String {
        var countOne:Int = 0
        var countZero:Int = 0
        for i in s {
            let value = Int(String(i))
            if value == 0 {
                countZero += 1
            }else {
                countOne += 1
            }
        }
        countOne -= 1
        var str:String = ""
        while countOne > 0  {
            str = "1" + str
            countOne -= 1
        }
        while countZero > 0 {
            str = str + "0"
            countZero -= 1
        }
        str = str + "1"
        return str
    }
