import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int($0)! }
var answer: [Int] = []

let sortedUniqueArray = Array(Set(arr)).sorted()

var valueToRank: [Int: Int] = [:]
for (index, value) in sortedUniqueArray.enumerated() {
    valueToRank[value] = index
}

for num in arr {
    answer.append(valueToRank[num]!)
}

print(answer.map { String($0) }.joined(separator: " "))