func solution(_ arr:[Int]) -> [Int] {
    var answer : [Int] = []
    answer = arr
    if answer.count == 1 {
        answer = [-1]
    }else{
        (answer.sort())
        answer.reverse()
        if let pop = answer.popLast() {
            var ar : [Int] = []
            ar = arr
            ar.remove(at: ar.firstIndex(of: pop) ?? 0)
            answer = ar
        }
    }

    return answer
}