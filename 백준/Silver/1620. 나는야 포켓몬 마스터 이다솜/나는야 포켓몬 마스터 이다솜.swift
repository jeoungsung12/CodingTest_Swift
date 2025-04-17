import Foundation

let str = readLine()!.split(separator: " ").map { String($0) }
let n = Int(str.first!)!
let m = Int(str.last!)!

var ans: [String] = []
var indexToDic: [String:Int] = [:]
var stringToDic: [Int:String] = [:]

for index in 0..<n {
    let value = readLine()!
    indexToDic.updateValue(index+1, forKey: value)
    stringToDic.updateValue(value, forKey: index+1)
}

for _ in 0..<m {
    let read = readLine()!
    if let index = Int(read) {
        let key = stringToDic[index]
        print(key!)
    } else {
        let value = indexToDic[read]!
        print(value)
    }
}
