func solution(_ seoul:[String]) -> String {
    var answer : String = ""
    for index in 0..<seoul.count {
        if seoul[index] == "Kim" {
            answer = "김서방은 \(index)에 있다"
        }
    }
    return answer
}