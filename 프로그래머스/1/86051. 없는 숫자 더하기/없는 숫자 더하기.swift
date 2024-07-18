import Foundation
func solution(_ numbers:[Int]) -> Int {
    var answer : Int = 0
    for index in 0...9 {
        if numbers.contains(index)  == false {
            answer += index
        }
    }
    return answer
}