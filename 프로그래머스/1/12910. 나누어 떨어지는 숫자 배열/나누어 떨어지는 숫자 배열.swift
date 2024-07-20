func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var answer : [Int] = []
    for ar in arr {
        if ar % divisor == 0 {
            answer.append(ar)
        }
    }
    if answer.isEmpty {
        answer.append(-1)
    } else {
        answer.sort()
    }
    return answer
}