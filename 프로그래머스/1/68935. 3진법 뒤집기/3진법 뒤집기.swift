import Foundation

func solution(_ n:Int) -> Int {
    var answer : Int = 0
    var N : Int = n
    var array : [Int] = []
    while ( N > 0 ) {
        array.append(N % 3)
        N /= 3
    }
    array.reverse()
    for index in 0..<array.count {
        answer += (array[index]) * Int((pow(3.0, Double(index))))
    }
    return answer
}