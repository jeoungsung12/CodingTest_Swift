import Foundation

let n = Int(readLine()!)!
var arr: [Int] = []
for _ in 0..<n {
    let m = Int(readLine()!)!
    arr.append(m)
}

for ar in arr.sorted() {
    print(ar)
}
