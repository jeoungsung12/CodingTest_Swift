func solution(_ arr:[Int]) -> Double {
    var answer : Double = 0
    for int in arr {
        answer += Double(int)
    }
    answer /= Double(arr.count)
    return answer
}