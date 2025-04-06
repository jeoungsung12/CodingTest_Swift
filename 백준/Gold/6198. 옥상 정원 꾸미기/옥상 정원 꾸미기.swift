let n = Int(readLine()!)!
var arr: [Int] = []
for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

var stack: [Int] = []
var count = 0

for i in 0..<n {
    while !stack.isEmpty && stack.last! <= arr[i] {
        stack.removeLast()
    }
    count += stack.count
    stack.append(arr[i])
}

print(count)