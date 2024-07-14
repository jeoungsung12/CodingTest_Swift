import Foundation

func solution(_ n:Int) -> Int {
    var answer:Int = 0
    var array = (String(n))
    for a in array {
        let stringA = String(a)
        if let stringToInt = Int(stringA) {
            answer += stringToInt
        }
    }
    return answer
}
