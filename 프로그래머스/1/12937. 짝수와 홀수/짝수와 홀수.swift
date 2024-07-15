func solution(_ num:Int) -> String {
    var answer : String = ""
    if num % 2 == 0 {
        answer = "Even"
    }else{
        answer = "Odd"
    }
    return answer
}