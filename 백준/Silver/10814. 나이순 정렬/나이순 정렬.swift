import Foundation

let n = Int(readLine()!)!
var arrays: [[String]] = []

for _ in 0..<n {
    let arr = readLine()!.split(separator: " ").map { String($0) }
    arrays.append(arr)
}

arrays.sort { (a, b) -> Bool in
    if Int(a[0])! != Int(b[0])! {
        return Int(a[0])! > Int(b[0])!
    } else {
        return true
    }
}

arrays = arrays.reversed()
for arr in arrays {
    print("\(arr[0]) \(arr[1])")
}
