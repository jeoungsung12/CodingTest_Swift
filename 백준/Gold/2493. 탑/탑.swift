import Foundation

//MARK: 탑
let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int($0)! }

arr = arr.reversed()
var stack: [Int] = []
var index: Int = 0
var result: [String] = .init(repeating: "0", count: n)

for index in 0..<n {
    while !stack.isEmpty && arr[stack.last!] < arr[index] {
        let value: String = "\(n - index)"
        result[stack.last!] = value
        stack.removeLast()
    }
    stack.append(index)
}

print(result.reversed().joined(separator: " "))