import Foundation

let n = Int(readLine()!)!
var arrays: [[Int]] = []

for _ in 0..<n {
    let arr = readLine()!.split(separator: " ").map { Int($0)! }
    arrays.append(arr)
}

arrays.sort { (a, b) -> Bool in
    if a[0] == b[0] {
        return a[1] > b[1]
    } else {
        return a[0] > b[0]
    }
}

arrays = arrays.reversed()
for arr in arrays {
    print("\(arr[0]) \(arr[1])")
}
