import Foundation

let n = Int(readLine()!)!
var strings: [String] = []

for _ in 0..<n {
    let str = readLine()!
    strings.append(str)
}

var uniqueStrings = Array(Set(strings))

uniqueStrings.sort { (a, b) -> Bool in
    if a.count == b.count {
        return a < b
    } else {
        return a.count < b.count
    }
}

for str in uniqueStrings {
    print(str)
}
