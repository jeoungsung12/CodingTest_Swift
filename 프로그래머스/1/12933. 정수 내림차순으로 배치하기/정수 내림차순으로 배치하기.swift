func solution(_ n:Int64) -> Int64 {
    var answer : Int64 = 0
    var IntToString = String(n)
    var answerArray : [Int64] = []
    for int in IntToString {
        if let intString = Int64(String(int)) {
            answerArray.append(intString)
        }
    }
    answerArray.sort()
    answerArray.reverse()
    for index in 0..<answerArray.count {
        answer *= 10
        answer += answerArray[index]
    }
    return answer
}