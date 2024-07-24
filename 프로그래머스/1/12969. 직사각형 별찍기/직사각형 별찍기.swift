import Foundation

func solution(_ A: Int, _ B: Int) -> String {
    var answer : String = ""
    for _ in 0..<B {
        for _ in 0..<A {
            answer += "*"
        }
        answer += "\n"
    }
    return answer
}

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

print(solution(a, b))