import Foundation

let arr = readLine()!.split(separator: " ").map { Int($0)! }
var result = [Int:Int]()
for ar in arr {
    if let _ = result[ar] {
        result[ar]? += 1
    } else {
        result.updateValue(1, forKey: ar)
    }
}

var answer: [Int] = []
for (key, value) in result {
    if value == 3 {
        print(10000+key*1000)
        break
    } else if value == 2 {
        print(1000+key*100)
        break
    } else {
        answer.append(key)
    }
}

if let max = answer.max(), answer.count > 2 {
    print(max*100)
}