import Foundation

let n = readLine()!
var arr: [Int] = []
for i in n {
    arr.append(Int(String(i))!)
}
print(arr.sorted().reversed().map { String($0) }.joined())