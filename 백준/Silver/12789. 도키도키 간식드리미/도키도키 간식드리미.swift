import Foundation

let n = Int(readLine()!)!
let waitingQueue = readLine()!.split(separator: " ").map { Int($0)! }

var stack: [Int] = []
var nextToServe = 1

for student in waitingQueue {
    if student == nextToServe {
        nextToServe += 1
        
        while !stack.isEmpty && stack.last! == nextToServe {
            stack.removeLast()
            nextToServe += 1
        }
    } else {
        stack.append(student)
    }
}

print(nextToServe > n ? "Nice" : "Sad")