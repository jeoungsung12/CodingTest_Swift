
import Foundation

enum Action: CaseIterable {
    case add
    case minus
    case print
    case empty
    case top
}

let n = Int(readLine()!)!
var stack: [Int] = []

for _ in 0..<n {
    let arr = readLine()!.split(separator: " ").map { Int($0)! }
    let action = arr.first!
    let num = arr.last ?? 0
    
    switch Action.allCases[action - 1] {
    case .add:
        stack.append(num)
    case .minus:
        if let last = stack.last {
            print(last)
            stack.removeLast()
        } else {
            print("-1")
        }
    case .print:
        print(stack.count)
    case .empty:
        print(stack.isEmpty ? "1" : "0")
    case .top:
        if let last = stack.last {
            print(last)
        } else {
            print("-1")
        }
    }
}
