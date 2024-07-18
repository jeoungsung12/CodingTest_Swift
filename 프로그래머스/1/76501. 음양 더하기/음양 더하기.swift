import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var answer : Int = 0
    for index in 0..<absolutes.count {
        if signs[index] == true {
            answer += absolutes[index]
        } else {
            answer -= absolutes[index]
        }
    }
    return answer
}