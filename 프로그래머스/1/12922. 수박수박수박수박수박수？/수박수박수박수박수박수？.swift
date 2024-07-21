func solution(_ n:Int) -> String {
    var answer : String = ""
    for index in 0..<n {
        if index % 2 == 0 {
            answer += "수"
        } else {
            answer += "박"
        }
    }
    return answer
}