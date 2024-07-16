import Foundation

func solution(_ n:Int) -> Int {
    var answer : Int = 0
    var index : Int = n
    while (index > 0) {
        if n % index == 1 {
            answer = index
        }
        index -= 1
    }
    return answer
}