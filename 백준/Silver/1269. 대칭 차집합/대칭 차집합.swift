import Foundation

let str = readLine()!.split(separator: " ").map { Int($0)! }
let n = str.first!
let m = str.last!

let nArr = Set(readLine()!.split(separator: " ").map { Int($0)! })
let mArr = Set(readLine()!.split(separator: " ").map { Int($0)! })

print(Array(nArr.symmetricDifference(mArr)).count)
