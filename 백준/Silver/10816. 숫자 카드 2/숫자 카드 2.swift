import Foundation

let n = Int(readLine()!)!
let nArr = readLine()!.split(separator: " ").map { Int($0)! }
let m = Int(readLine()!)!
let mArr = readLine()!.split(separator: " ").map { Int($0)! }

var vis: [Int: Int] = [:]
for nAr in nArr {
    vis[nAr, default: 0] += 1
}

let result = mArr.map { String(vis[$0, default: 0]) }
print(result.joined(separator: " "))
