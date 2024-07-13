import Foundation

func solution(_ s:String) -> Bool
{
    var ans:Bool = false
    var pCount : Int = 0
    var yCount : Int = 0
    for countString in s {
        if (countString == "p") || (countString == "P") {
            pCount += 1
        }
        if (countString == "y") || (countString == "Y") {
            yCount += 1
        }
    }
    if (pCount == 0) && (yCount == 0) {
        ans = true
    }else if (pCount == yCount) {
        ans = true
    }else if (pCount != yCount) {
        ans = false
    }
    return ans
}