import Foundation

let str = readLine()!.split(separator: " ").map { String($0) }
let n = Int(str.first!)!
let m = Int(str.last!)!

var answer: Int = 0
var memory = Set<String>()
for _ in 0..<n {
    memory.insert(readLine()!)
}

for _ in 0..<m {
    if memory.contains(readLine()!) {
        answer += 1
    }
}

print(answer)