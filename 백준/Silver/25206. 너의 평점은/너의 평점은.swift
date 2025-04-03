import Foundation

let result = ["A+":4.5, "A0":4.0, "B+":3.5, "B0": 3.0, "C+": 2.5, "C0": 2.0, "D+": 1.5, "D0": 1.0, "F":0.0]
var answer: Double = 0
var count: Double = 0
for _ in 0..<20 {
    let str = readLine()!.split(separator: " ")
    let key = String(str[2])
    if let item = result[key] {
        answer += (Double(str[1])! * (item))
        count += Double(str[1])!
    }
}

print(answer / count)