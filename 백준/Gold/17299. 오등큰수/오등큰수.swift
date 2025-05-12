import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int($0)! }

var frequency: [Int: Int] = [:]
for num in arr {
    frequency[num, default: 0] += 1
}

var stack: [Int] = []
var result = Array(repeating: -1, count: n)

for i in 0..<n {
    while !stack.isEmpty && frequency[arr[stack.last!]]! < frequency[arr[i]]! {
        result[stack.removeLast()] = arr[i]
    }
    stack.append(i)
}

print(result.map { String($0) }.joined(separator: " "))

/*
 A = [1, 1, 2, 3, 4, 2, 1]
 F(1) = 3
 F(2) = 2
 F(3) = 1
 F(4) = 1
 */
