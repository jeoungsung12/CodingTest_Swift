import Foundation
func solution(_ s:String) -> Bool {
    var answer : Bool = false
    let stringArray : Array = Array(s)
    var index : Int = 0
    if ((stringArray.count == 4) || (stringArray.count == 6)) {
        for array in stringArray {
            if (array >= "0") && (array <= "9") {
                index += 1
            }
        }
        if index == stringArray.count {
            answer = true
        }else{
            answer = false
        }
    }else{
        answer = false
    }
    return answer
}