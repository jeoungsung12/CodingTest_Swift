import Foundation

let n = Int(readLine()!)!
var arr = (readLine()!).split(separator: " ").map { Int($0) ?? 0 }
let x = Int(readLine()!)!

var vis: [Bool] = .init(repeating: false, count: 2000000 + 2)
var count = 0

for element in arr {
    if (element < x) && vis[x-element] {
        count += 1
    }
    vis[element] = true
}

print(count)