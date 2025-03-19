import Foundation

let read = readLine()!
let readArray = read.split(separator: " ").map { Int($0) ?? 0 }

print(readArray[0] + readArray[1] + readArray[2])
