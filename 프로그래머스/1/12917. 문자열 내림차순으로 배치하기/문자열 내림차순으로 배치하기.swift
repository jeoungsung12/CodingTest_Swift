func solution(_ s:String) -> String {
    var answer : String = ""
    answer = s
    let string = answer.sorted()
    return String(string.reversed())
}