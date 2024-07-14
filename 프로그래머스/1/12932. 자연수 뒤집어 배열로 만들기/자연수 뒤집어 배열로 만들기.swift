func solution(_ n:Int64) -> [Int] {
    var answer : [Int] = []
    let IntToString = String(n)
    for int in IntToString {
        if let IntArray = Int(String(int)) {
            answer.append(IntArray)
        }
    }
    answer = answer.reversed()
    return answer
}