import Foundation

let n = Int(readLine()!)!
var nArr = readLine()!.split(separator: " ").map { Int($0)! }

let m = Int(readLine()!)!
var mArr = readLine()!.split(separator: " ").map { Int($0)! }
let set = Set(nArr)
var answer: [Int] = []
for mAr in mArr {
    if set.contains(mAr) {
        answer.append(1)
    } else {
        answer.append(0)
    }
}

print(answer.map { String($0) }.joined(separator: " "))