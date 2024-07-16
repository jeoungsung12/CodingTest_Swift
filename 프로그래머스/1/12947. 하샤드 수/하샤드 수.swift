func solution(_ x:Int) -> Bool {
    var answer : Bool = true
    var intToString : String = String(x)
    var result : Int = 0
    for int in intToString {
        if let indexInt = Int(String(int)) {
            result += indexInt
        }
    }
    if x % result == 0 {
        answer = true
    } else {
        answer = false
    }
    return answer
}