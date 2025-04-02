
let n = Int(readLine()!)!
let prices = readLine()!.split(separator: " ").map { Int($0)! }
var stack: [Int] = []
var answer: [Int] = .init(repeating: -1, count: n)

for i in 0..<n {
    while !stack.isEmpty && prices[i] > prices[stack.last!] {
        let index = stack.removeLast()
        answer[index] = prices[i]
    }
    stack.append(i)
}

let result = answer.map { String($0) }
print(result.joined(separator: " "))
