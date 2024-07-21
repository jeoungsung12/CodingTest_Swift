func solution(_ s:String) -> String {
    var answer : String = ""
    let string : Array = Array(s)
    if s.count % 2 == 0 {
        answer += String(string[string.count / 2 - 1])
        answer += String(string[string.count / 2])
    }else{
        answer += String(string[string.count / 2])
    }
    return answer
}